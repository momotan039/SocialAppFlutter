import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget MyTextFormField(
{
  required String LabelText_,
  required IconData prefixIcon_,
  TextEditingController? controller_
}
    )=>TextFormField(
  decoration: InputDecoration(
      prefixIcon: Icon(prefixIcon_),
      labelText: LabelText_,
      border: OutlineInputBorder(),
      labelStyle: TextStyle(
          fontWeight: FontWeight.bold
      )
  ),
  style: TextStyle(
      fontWeight: FontWeight.bold
  ),
  validator: (value){
    if(value!.isEmpty)
      return "Please Fill this field!!!";
    return null;
  },
  controller: controller_,
);