import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socialapp/Screens/RegisterScreen/RegisterScreen.dart';

import '../../Components/Components.dart';
import '../../Components/ContoolsComponents.dart';
import '../../Cubit/Cubit.dart';
import '../../Cubit/CubiteStates.dart';

class LogInScreen extends StatelessWidget {
  var mailController = TextEditingController();
  var passwordController = TextEditingController();
  var userNameController = TextEditingController();
  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CubitSocialApp,CubiteStates>(
      listener: (context,state){
      }, builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("LogIn",style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: 10),
                      deffultTextFormField(controller_: mailController, label_text: 'Email',prefixIcon_: Icons.mail),
                      SizedBox(height: 10),
                      deffultTextFormField(controller_: passwordController, label_text: 'Password',prefixIcon_: Icons.password),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            ElevatedButton(
                                onPressed: (){
                                  if(!_formKey.currentState!.validate())
                                    return;

                                    CubitSocialApp.get(context).HandleButtonLogin(
                                        context,mail_: mailController.text,pass_:passwordController.text);
                                },
                                child: Text("LogIn")),
                            Spacer(),
                            TextButton(onPressed: (){
                              NextScreen(context, WidgetScreen: RegisterScreen(), compleateRouting: true);
                            },
                              child: Text("Register Now",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.blue
                            )),)
                          ],
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
