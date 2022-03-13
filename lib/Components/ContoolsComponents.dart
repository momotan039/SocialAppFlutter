import 'package:flutter/material.dart';


void NextScreen(context,{required WidgetScreen,required bool compleateRouting}){
  Navigator.pushAndRemoveUntil(
      context, MaterialPageRoute(
      builder: (context)=>WidgetScreen), (route) => compleateRouting);
}