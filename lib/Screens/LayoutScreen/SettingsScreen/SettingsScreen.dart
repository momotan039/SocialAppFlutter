import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:socialapp/Components/my_flutter_app_icons.dart';
import 'package:socialapp/Style/style.dart';

class SettingsScreen  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Container(
              height: 260,
              width: double.infinity,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    child: Card(
                      child: Image(fit: BoxFit.cover,image: NetworkImage('https://img.freepik.com/free-photo/pots-vegetables-harvest_23-2147694057.jpg')),
                    ),
                  ),
                  Align(
                    alignment:Alignment.bottomCenter,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 80,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('https://img.freepik.com/free-photo/male-chef-kitchen-cooking_23-2148934659.jpg'),
                        radius: 75,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text("MIthat Shibly",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28
            ),),
            SizedBox(height: 10,),
            Text("Best chef of the world i have been worked 30 years with large experince",
            textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                )
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text("200",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          )),
                      SizedBox(height: 5,),
                      Text("Posts",
                          style: TextStyle(
                              color: Colors.grey[600]
                          ))
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text("500",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          )),
                      SizedBox(height: 5,),
                      Text("Photos",
                          style: TextStyle(
                              color: Colors.grey[600]
                          ))
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text("22K",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          )),
                      SizedBox(height: 5,),
                      Text("Followers",
                          style: TextStyle(
                              color: Colors.grey[600]
                          ))
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text("25K",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          )),
                      SizedBox(height: 5,),
                      Text("Following",
                          style: TextStyle(
                              color: Colors.grey[600]
                          ))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(onPressed: (){},
                      child: Text("Add Photo",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                        ),

                      ),
                    color: MainColor,
                  ),
                ),
                SizedBox(width: 20,),
                MaterialButton(onPressed: (){},
                  child: Icon(MyFlutterApp.pencil_alt),
                  color: MainColor,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
