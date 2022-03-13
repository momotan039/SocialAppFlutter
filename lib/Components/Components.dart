
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget deffultTextFormField(
{
  required String label_text,
  required  controller_,
   IconData? prefixIcon_,
}
    )=>TextFormField(
  controller: controller_,
  decoration: InputDecoration(
      prefixIcon: Icon(prefixIcon_),
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
  },
);