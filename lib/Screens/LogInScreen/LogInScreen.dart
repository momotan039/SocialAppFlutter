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
  bool hidePassword=true;
  IconData IconPassword=Icons.visibility;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CubitSocialApp,CubiteStates>(
      listener: (context,state){
      }, builder: (context, state) {
        var myCubit=CubitSocialApp.get(context);
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
                      deffultTextFormField(controller_: passwordController, label_text: 'Password',prefixIcon_: Icons.password,isPass: hidePassword,
                          suffixIcon_: IconButton(
                              onPressed: (){
                                hidePassword=!hidePassword;
                                if(hidePassword)
                                  IconPassword=Icons.visibility;
                                else
                                  IconPassword=Icons.visibility_off;
                                myCubit.HandleShowPassIcon();
                              },
                              icon: Icon(IconPassword))),
                      SizedBox(height: 10),
                      myCubit.state is LoginProgressState ? Center(child: CircularProgressIndicator()):
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            ElevatedButton(
                                onPressed: (){
                                  if(!_formKey.currentState!.validate())
                                    return;
                                  myCubit.HandleButtonLogin(
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
