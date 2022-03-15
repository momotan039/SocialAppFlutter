import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:socialapp/Components/ComponentsApp.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              Card(
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Image(
                        height: 250,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://img.freepik.com/free-photo/bearded-hipster-guy-points-both-index-fingers-shows-amazing-blank-space-gives-nice-offer-presses-lips-wears-stereo-headphones-red-hoodie-isolated-pink-pastel-wall-look-upwards_273609-42389.jpg")),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      child: Text(
                        "Communicate with freinds",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                elevation: 15,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
              SizedBox(height: 10),
              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index)=>Article(),
                  itemCount: 5,
                separatorBuilder: (context,index)=>SizedBox(height: 10,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
