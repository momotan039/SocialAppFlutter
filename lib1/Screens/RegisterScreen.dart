
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Components.dart';

class RegisterScreen extends StatelessWidget {
   var keyForm=GlobalKey<FormState>();
   var mailController=TextEditingController();
   var userNameController=TextEditingController();
   var PasswordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: keyForm,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Registration",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                    ),),
                  SizedBox(height: 10),
                  MyTextFormField(LabelText_: "UserName:",prefixIcon_: Icons.text_fields,controller_: userNameController),
                  SizedBox(height: 10),
                  MyTextFormField(LabelText_: "Email Address:",prefixIcon_: Icons.mail,controller_: mailController),
                  SizedBox(height: 10),
                  MyTextFormField(LabelText_: "Password:",prefixIcon_: Icons.password,controller_: PasswordController),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: (){

                      if(!keyForm.currentState!.validate())
                        return;
                      FirebaseAuth.instance.createUserWithEmailAndPassword(
                          email: mailController.text, password:PasswordController.text).then((value){
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Successful Registration !!"))
                        );
                      }).catchError((error){print(error);});
                      
                      print(userNameController.text);
                    },
                    child: Text("Submit"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
