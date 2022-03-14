
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Components/Components.dart';
import '../../Cubit/Cubit.dart';
import '../../Cubit/CubiteStates.dart';

class RegisterScreen extends StatelessWidget {
   var keyForm=GlobalKey<FormState>();
   var UserNameController=TextEditingController();
   var mailController=TextEditingController();
   var PasswordController=TextEditingController();
   var PhoneController=TextEditingController();
   bool hidePassword=true;
   IconData IconPassword=Icons.visibility;
  @override
  Widget build( context) {
    return BlocConsumer<CubitSocialApp,CubiteStates>(
      listener: ( context, state) {
      },
      builder: (context, state) {
        var myCubit=CubitSocialApp.get(context);
        return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
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
                    deffultTextFormField(

                        controller_: UserNameController,
                        label_text: "User Name",
                        prefixIcon_: Icons.person_outline
                    ),
                    SizedBox(height: 10),

                    deffultTextFormField(
                        controller_: mailController,
                        label_text: "Email",
                        prefixIcon_: Icons.mail_outline
                    ),
                    SizedBox(height: 10),
                    deffultTextFormField(
                        controller_: PasswordController,
                        label_text: "PassWord",
                        prefixIcon_: Icons.password_outlined,
                        isPass: hidePassword,
                        suffixIcon_: IconButton(
                            onPressed: (){
                              hidePassword=!hidePassword;
                              if(hidePassword)
                                IconPassword=Icons.visibility;
                              else
                                IconPassword=Icons.visibility_off;
                              myCubit.HandleShowPassIcon();
                            },
                            icon: Icon(IconPassword))
                    ),
                    SizedBox(height: 10),
                    deffultTextFormField(
                        controller_: PhoneController,
                        label_text: "Phone Number",
                        prefixIcon_: Icons.phone
                    ),
                    SizedBox(height: 10),
                    myCubit.state is RegisterProgressState ?Center(child: CircularProgressIndicator()):
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: (){
                          if(!keyForm.currentState!.validate())
                          return;
                          myCubit.HandleButtonRegister(context,
                              mail_:mailController.text,
                              pass_:PasswordController.text,
                              name_: UserNameController.text,
                              phone_: PhoneController.text
                          );
                        },
                        child: Text("Register",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),)
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
      },
    );
  }
}
