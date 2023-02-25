// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unnecessary_string_interpolations, avoid_unnecessary_containers, sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchAll extends StatefulWidget {
  @override
  State<SearchAll> createState() => _SearchAllState();
}

class _SearchAllState extends State<SearchAll> {
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        elevation: 0.0,
        title: Center(
          child: Text(
            "Amharic and English",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w400, color: Colors.black),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [],
      ),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0.0,
          // ignore: prefer_const_literals_to_create_immutables
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 25,
                color: Color.fromARGB(255, 0, 27, 50),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.music_note,
                size: 25,
                color: Color.fromARGB(255, 0, 27, 50),
              ),
              label: 'New Songs',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 25,
                color: Color.fromARGB(255, 0, 27, 50),
              ),
              label: 'All Songs',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 25,
                color: Color.fromARGB(255, 0, 27, 50),
              ),
              label: 'Menu',
              // backgroundColor: Colors.pink,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color.fromARGB(255, 0, 27, 50),
          onTap: (index) {
            switch (index) {
              case 0:
                context.go('/');
                break;
              case 1:
                context.go('/newSongs');
                break;
              case 2:
                context.go('/searchAll');
                break;
              case 3:
                context.go('/menu');
                break;
            }
            _selectedIndex = index;
          }),
    );
  }
}
