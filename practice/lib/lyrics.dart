
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Lyrics extends StatelessWidget {
  const Lyrics({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Icon( Icons.arrow_back, 
            color: Colors.grey[900], 
            size: 28,),
            Text(
              'Enzemer',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: Color.fromARGB(255, 0, 21, 52)
              ),),
            Icon( Icons.favorite_border, 
            color: Colors.red, 
            size: 28,)
          ],
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 254, 254, 254)
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(130.0, 20.0, 130.0, 10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(6)
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                  child: Text(
                    "Thy Word",
                    style: TextStyle(
                      fontSize: 22,
                      color: Color.fromARGB(255, 7, 37, 62),
                      fontWeight: FontWeight.w400 
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.blue[100],
            height: 2,
            width: 200,
          ),
          SizedBox(height: 25,),
          Text("Thy word is a lamp unto my feet \n And a light unto my path \n Thy word is a lamp unto my feet \n And a light unto my path \n When i feel afraid \n And think i have lost my way \n Still, you are there right beside me \n Nothing will i fear \n As long as you are near; \n Please be near till the end \n I will not forget \n Your love for me and yet, \n My heart forever is wondering \n Jesus be my guide, \n And hold me to your side, \n And i will love you to the end \n Nothing will i fear \n As long as you are near; \n Please be near me to the end",
            style: TextStyle( height: 1.2,
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w300
            ),
          )
        ],
      ),
    );
  }
}