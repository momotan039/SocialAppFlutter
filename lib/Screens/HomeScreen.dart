import 'package:flutter/material.dart';
import 'package:socialapp/Screens/LogInScreen/LogInScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LogInScreen(),
    );
  }
}
