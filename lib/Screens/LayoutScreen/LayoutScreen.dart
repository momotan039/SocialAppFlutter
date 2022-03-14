import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socialapp/Components/my_flutter_app_icons.dart';
import 'package:socialapp/Cubit/Cubit.dart';
import 'package:socialapp/Cubit/CubiteStates.dart';
import 'package:socialapp/Screens/LayoutScreen/ChatScreen/ChatScreen.dart';
import 'package:socialapp/Screens/LayoutScreen/HomeScreen/HomeScreen.dart';
import 'package:socialapp/Screens/LayoutScreen/SettingsScreen/SettingsScreen.dart';
import 'package:socialapp/Screens/LayoutScreen/UsersScreen/UsersSettings.dart';

class LayoutScreen extends StatelessWidget {
  List<Widget> listScreens=[HomeScreen(),ChatScreen(),UsersScreen(),SettingsScreen()];
  List<String> listTitle=["Home","Chat","Users","Settings"];
  static  int currentIndexScreen=0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CubitSocialApp,CubiteStates>(
        builder: (context,stat)=> Scaffold(
          appBar: AppBar(
            title: Text(listTitle[currentIndexScreen]),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(MyFlutterApp.bell)),
              IconButton(onPressed: (){}, icon: Icon(MyFlutterApp.search)),
            ],
          ),
          body: listScreens[currentIndexScreen],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(MyFlutterApp.home),
                  label:"Home"),
              BottomNavigationBarItem(icon: Icon(MyFlutterApp.rocketchat),
                  label:"Chat"),
              BottomNavigationBarItem(icon: Icon(MyFlutterApp.users),
                  label:"Users"),
              BottomNavigationBarItem(icon: Icon(MyFlutterApp.optin_monster),
                  label:"Settings"),
            ],
            fixedColor: Colors.green,
            currentIndex: currentIndexScreen,
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            selectedLabelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            onTap: (index){
              CubitSocialApp.get(context).OnTabNavigationBar(index);
            },
          ),
        ),
        listener: (context,stat){}
    );
  }
}