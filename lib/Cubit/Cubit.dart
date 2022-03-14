import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socialapp/models/User.dart';

import 'CubiteStates.dart';

class CubitSocialApp extends  Cubit<CubiteStates>{
  CubitSocialApp() : super(InitialState());
  static CubitSocialApp get(context)=>BlocProvider.of(context);

  HandleShowPassIcon(){
    emit(ShowPassIconState());
  }

  HandleButtonLogin(context,{required  mail_,required  pass_}){
    emit(LoginProgressState());
    FirebaseAuth.instance.signInWithEmailAndPassword(email: mail_, password: pass_)
        .then((value){
      emit(LoginSuccessState());
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Welecome Back...'),
      ));
    }).catchError((error){
      emit(LoginFialdState());
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

  HandleButtonRegister(context,{required  mail_,required  pass_,required name_,required phone_}){
    emit(RegisterProgressState());
    FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: mail_,
        password:pass_)
        .then((value) {

          UserModel user=UserModel(
            id:value.user?.uid,
            mail: mail_,
            name:name_,
            phone:phone_
          );

          var xsd=FirebaseFirestore.instance.collection('users').doc(value.user?.uid).set({
            'map1': {
              'key1': 'value1',
              'key2': 'value2',
            }}).then((value) => emit(CreateUserSuccessState()))
              .catchError((error) {
            print(error.code);
            emit(CreateUserFialdState());
          });

          // FirebaseFirestore.instance.collection('users')
          //     .doc(value.user?.uid).set(UserModel.ToMap(user))
          //     .then((value) => emit(CreateUserSuccessState()))
          //     .catchError((error) {
          //       print(error.code);
          //       emit(CreateUserFialdState());
          //     });

      emit(RegisterSuccessState());

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Successfully Registered , Go Back To Login'),
      ));

        }).catchError((error){
      emit(RegisterFialdState());

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
          print(error.code);
    });
  }
}




