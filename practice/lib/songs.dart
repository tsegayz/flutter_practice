// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unnecessary_string_interpolations, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Songs extends StatefulWidget {

  @override
  State<Songs> createState() => _SongsState();
}

class _SongsState extends State<Songs> {
  int index = 0;
  final List<String> entries = <String> ["Yezelalem fetari", "Habte Semay", "Kahin", "Ruchaw", "Yetadelen"];
  final List<int> colorcode = <int> [400, 300, 200, 700, 500, ];
  
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.grey[100],
      elevation: 0.0,
        title: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Icon( Icons.menu, size: 36, color: Color.fromARGB(255, 12, 47, 76),),
            Text(
              "Songs",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 10, 41, 67)
              ),
            ),
            Icon( Icons.search, size: 35, color: Color.fromARGB(255, 12, 47, 76),),
          ],
        ),
      ),
      body: Column( crossAxisAlignment: CrossAxisAlignment.start, 
        // ignore: prefer_const_literals_to_create_immutables
        children: [ 
          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Hanna",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black87,
                    fontWeight: FontWeight.w300
                  ),
                ),
              ),
              Icon(Icons.arrow_forward_ios_rounded, color: Color.fromARGB(255, 6, 45, 77), )
            ],
          ),          
          Expanded( flex: 1,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey[200]
                    ),
                    child: Center(
                      child: Text(
                        "Hana",
                        style: TextStyle(
                          fontSize: 20, 
                          color: Color.fromARGB(255, 0, 36, 65)
                        ),
                      ),
                    ),
                  ),
                );
            }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Songs",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.black87,
                  fontWeight: FontWeight.w300
                ),
              ),
            ),
          ),
          Expanded( flex: 5,
            child: Container( width: 400, height: 430,
            child: ListView.builder( 
              itemCount: 20,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 0.0, 10.0, 10.0),
                  child: 
                  Stack(
                    children: [
                      Container( 
                        width: 400,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(13.0)
                        ),
                      ),
                      Positioned( top: 5, left: 10,
                        child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                      ),
                      Positioned( top: 25, left: 90,
                        child: Column( mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "Berun Kefetu",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black
                              ),
                            ),
                            Text(
                              "Hanna Tekele",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 0, 45, 81)
                              ),
                            ),                  
                          ],
                        )
                      ), 
                      Positioned( top: 25, left: 20,
                        child: Icon(
                          Icons.audiotrack_outlined,
                          color: Color.fromARGB(255, 32, 98, 151),
                          size: 45,
                        ), 
                      ),              
                    ],
                  )
                );
              }
            ),
          ), 
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar( elevation: 0.0,
        // ignore: prefer_const_literals_to_create_immutables
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem( 
            icon: Icon(Icons.home, size: 25,color: Color.fromARGB(255, 0, 27, 50),),
            label: 'Home', 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 25, color: Color.fromARGB(255, 0, 27, 50),),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu, size: 25,color: Color.fromARGB(255, 0, 27, 50),),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, size: 25,color: Color.fromARGB(255, 0, 27, 50),),
            label: 'Settings',
            // backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 0, 27, 50),
        onTap: _onItemTapped,
      ),
    );
  }
}