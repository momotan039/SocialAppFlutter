import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socialapp/Cubit/Cubit.dart';
import 'package:socialapp/Cubit/CubiteStates.dart';

class LayoutScreen extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return BlocConsumer<CubitSocialApp,CubiteStates>(
        builder: (context,stat)=> Scaffold(
          appBar: AppBar(),
          body: Text("Wlecome Back!!"),
        ),
        listener: (context,stat){}
    );
  }
}
