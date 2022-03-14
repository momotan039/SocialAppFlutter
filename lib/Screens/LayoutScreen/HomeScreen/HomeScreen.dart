import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:8),
          child: Column(
            children: [
              Card(
                child: Image(height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    image:
                NetworkImage("https://img.freepik.com/free-photo/bearded-hipster-guy-points-both-index-fingers-shows-amazing-blank-space-gives-nice-offer-presses-lips-wears-stereo-headphones-red-hoodie-isolated-pink-pastel-wall-look-upwards_273609-42389.jpg"))
              ,elevation: 15,clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage:  NetworkImage("https://img.freepik.com/free-photo/asian-woman-posing-looking-camera_23-2148255359.jpg"),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Kristeen Shibly",style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 5,),
                        Text("Januray 21,2022 at 12:00 pm")
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
