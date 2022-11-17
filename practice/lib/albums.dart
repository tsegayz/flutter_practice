// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Albums extends StatelessWidget {
  const Albums({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Color.fromARGB(255, 232, 232, 232),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.fromLTRB ( 90.0, 70.0, 90.0, 0.0),
              child: Text(
                "Hanna Tekle",
                style: TextStyle(
                  fontSize: 27,
                  color: Color.fromARGB(255, 0, 25, 46),
                ),
              ),
            ),
          ), 
          Expanded(
            flex: 4,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60), 
                    topRight: Radius.circular(60))
              ),
              child: Column( 
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, top: 14),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(
                          Icons.filter_list,
                          color: Colors.grey[800],
                          size: 30,),
                        Text(
                          "Name",
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 16
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(                        
                        width: 160,
                        height: 130,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: Column( mainAxisAlignment: MainAxisAlignment.center, 
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "Agezege",
                              style: TextStyle(
                                fontSize: 18
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(left:45.0, top: 10),
                              child: Text(
                                "Album 1",
                                style: TextStyle(
                                  fontSize: 14
                                ),
                              ),
                            ),                            
                          ],
                        ),
                      ),
                      Container(
                        width: 160,
                        height: 130,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "Yezelalem Fetari",
                              style: TextStyle(
                                  fontSize: 18
                                ),),
                            Padding(
                              padding: const EdgeInsets.only(left:45.0, top: 10),
                              child: Text(
                                "Album 2",
                                style: TextStyle(
                                  fontSize: 14
                                ),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25,),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 160,
                        height: 130,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "Habte Semay",
                              style: TextStyle(
                                fontSize: 18
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(left:45.0, top: 10),
                              child: Text(
                                "Album 3",
                                style: TextStyle(
                                  fontSize: 14
                                ),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 160,
                        height: 130,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "Singles",
                              style: TextStyle(
                                fontSize: 18
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )                  
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}