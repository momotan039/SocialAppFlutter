import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socialapp/Screens/LogInScreen/LogInScreen.dart';
import 'Cubit/BlocObserver.dart';
import 'Cubit/Cubit.dart';
import 'Cubit/CubiteStates.dart';

 main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
   BlocOverrides.runZoned(
         () {
           runApp( MyApp());
           //wallahe walad
         },
     blocObserver: MyBlocObserver(),
   );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>CubitSocialApp(),
      child: BlocConsumer<CubitSocialApp,CubiteStates>(
        builder: (BuildContext context, state){
          return MaterialApp(
            theme: ThemeData(
                appBarTheme: AppBarTheme(
                    elevation: 0,
                    backgroundColor: Colors.grey[50],
                    systemOverlayStyle: SystemUiOverlayStyle(
                        statusBarColor:  Colors.grey[50]
                    ),
                    iconTheme: IconThemeData(
                        color: Colors.blue,
                        size: 35
                    )
                )
            ),
            debugShowCheckedModeBanner: false,
            home:  LogInScreen(),
          );
        },
        listener: (BuildContext context, Object? state) {  },),
    );
  }
}






