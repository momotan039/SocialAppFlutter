
import 'package:flutter/material.dart';

import 'my_flutter_app_icons.dart';

Widget Article()=>Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.white,
  ),
  child: Card(
    elevation: 15,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 35,
                backgroundImage: NetworkImage(
                    "https://img.freepik.com/free-photo/asian-woman-posing-looking-camera_23-2148255359.jpg"),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      children: [
                        Text(
                          "Kristeen Shibly",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Icon(
                          Icons.verified,
                          color: Colors.green,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Januray 21,2022 at 12:00 pm",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    MyFlutterApp.ellipsis_h,
                    color: Colors.green,
                  ))
            ],
          ),
          SizedBox(height: 10,),
          Container(
            width: double.infinity,
            height: 2,
            color: Colors.grey[500],
          ),
          SizedBox(height: 10,),
          Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry."
              " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
              " when an unknown printer took a galley of type and scrambled it to make a type specimen book."
            ,style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
            ),),
          Wrap(
            spacing: -10,
            children: [
              TextButton(onPressed: (){}, child: Text("#Software")),
              TextButton(onPressed: (){}, child: Text("#Flutter")),
              TextButton(onPressed: (){}, child: Text("#Programming")),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image(
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://img.freepik.com/free-photo/bearded-hipster-guy-points-both-index-fingers-shows-amazing-blank-space-gives-nice-offer-presses-lips-wears-stereo-headphones-red-hoodie-isolated-pink-pastel-wall-look-upwards_273609-42389.jpg")),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Expanded(child: Row(
                children: [
                  Icon(MyFlutterApp.heart,
                    color: Colors.green,),
                  SizedBox(width: 10,),
                  Text("120",
                    style: TextStyle(
                      fontSize: 17,
                    ),),
                ],
              )),
              Expanded(child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(MyFlutterApp.comment_dots,
                    color: Colors.green,),
                  SizedBox(width: 10,),
                  Text("120",
                    style: TextStyle(
                      fontSize: 17,
                    ),),
                ],
              )),
            ],
          ),
          SizedBox(height: 10,),
          Container(
            width: double.infinity,
            height: 2,
            color: Colors.grey[500],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          "https://img.freepik.com/free-photo/asian-woman-posing-looking-camera_23-2148255359.jpg"),
                    ),
                    SizedBox(width: 10,),
                    Text("Write a Comment ..."),
                  ],
                ),
              ),
              InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(MyFlutterApp.heart,
                        color: Colors.green,),
                      SizedBox(width: 10,),
                      Text("Like")
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ),
  ),
);