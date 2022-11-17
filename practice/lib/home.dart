// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.grey[200],
      body: Column( 
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            "ENZEMER",
            style: TextStyle(
              fontSize: 40,
              color: Color.fromARGB(255, 0, 37, 68)
            ), 
          ),
          Container( 
            width: 400,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(13.0)
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar( elevation: 0.0,
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