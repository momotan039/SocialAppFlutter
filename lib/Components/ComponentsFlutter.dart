
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialapp/Cubit/Cubit.dart';

Widget deffultTextFormField(
{
  required String label_text,
  required TextEditingController controller_,
  bool isPass=false,
  IconData? prefixIcon_,
  IconButton? suffixIcon_,
}
    ) {
  return TextFormField(
  controller: controller_,
  decoration: InputDecoration(
      prefixIcon: Icon(prefixIcon_),
      suffixIcon: suffixIcon_,
      labelText: label_text,
      border: OutlineInputBorder(),
      labelStyle: TextStyle(
          fontWeight: FontWeight.bold
      )
  ),
  style: TextStyle(
      fontWeight: FontWeight.bold
  ),
  validator: (value){
    if(value==null || value.isEmpty)
      return "You Must Fill this Field!!";
    return null;
  },
  obscureText: isPass,
);
}