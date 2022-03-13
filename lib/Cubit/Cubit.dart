import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'CubiteStates.dart';

class CubitSocialApp extends  Cubit<CubiteStates>{
  CubitSocialApp() : super(InitialState());
  static CubitSocialApp get(context)=>BlocProvider.of(context);


  HandleButtonLogin(context,{required String mail_,required String pass_}){
    emit(LoginProgressState());
    FirebaseAuth.instance.signInWithEmailAndPassword(email: mail_, password: pass_)
        .then((value){
      emit(LoginSuccessState());
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Welecome Back...'),
      ));
    }).catchError((error){
      emit(RegisterFialdState());
      if(error.code=="invalid-email")
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('This Invalid Email , Please Change It'),
        ));
      else if(error.code=='user-not-found')
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('This User Not Exist , Please Change It Or Register Now'),
        ));
      else if(error.code=='wrong-password'){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('This Password Not Correct , Please Change It'),
        ));
      }
      print(error.code);
    });
  }
  HandleButtonRegister(context,{required String mail_,required String pass_}){
    emit(RegisterProgressState());
    FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: mail_,
        password:pass_)
        .then((value) {
      emit(RegisterSuccessState());
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Successfully Registered , Go Back To Login'),
      ));
        }).catchError((error){
             if(error.code=="email-already-in-use")
               ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                 content: Text('This Email Already In Use , Use A Nother One'),
               ));
             else if(error.code=="weak-password")
               ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                 content: Text('This Password Is Very Weak , Please Change It'),
               ));
             else if(error.code=="invalid-email")
               ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                 content: Text('This Invalid Email , Please Change It'),
               ));
          emit(RegisterFialdState());
          print(error.code);
    });
  }
}




