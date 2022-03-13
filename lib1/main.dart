import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Screens/HomeScreen.dart';
import 'Screens/RegisterScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  RegisterScreen(),
    );
  }
}


class test extends StatefulWidget {

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ElevatedButton(
        onPressed: (){

        }, child: Text("Submit"),
      ),
    );
  }
}





