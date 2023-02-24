// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unnecessary_string_interpolations, avoid_unnecessary_containers, sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'songsModel.dart';

class Songs extends StatefulWidget {
  @override
  State<Songs> createState() => _SongsState();
}

class _SongsState extends State<Songs> {
  int index = 0;
  int _index = 0;

  static List<SongsModel> items = [
    SongsModel(
      "Hana",
      "Agezege ",
    ),
    SongsModel(
      "Endale",
      "Mematsega ",
    ),
    SongsModel(
      "Dawit",
      "Oh nefse ",
    ),
  ];

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  get_icons(int index) {
    return index % 2 == 0 ? Icons.favorite_border : Icons.favorite;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Icon(
              Icons.arrow_back,
              size: 25,
              color: Colors.white,
            ),
            SizedBox(
              width: 120,
            ),
            Text(
              "All Songs",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 400,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60.0),
                  border: Border.all(
                    color: Color.fromARGB(255, 3, 100, 180),
                  )),
              child: Padding(
                padding: const EdgeInsets.only(left: 25, top: 13),
                child: Text(
                  "Search song by name or artist",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ListView.builder(
                itemCount: items.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        width: 400,
                        height: 65,
                        decoration: BoxDecoration(
                            // color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(13.0)),
                      ),
                      Positioned(
                        top: 62,
                        child: Container(
                          width: 4000,
                          height: 1,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 20,
                          left: 18,
                          child: Column(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                items[index].song,
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                              Text(items[index].artist,
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black))
                            ],
                          )),
                      Positioned(
                          top: 25,
                          right: 20,
                          child: InkWell(
                              onTap: () {
                                setState(() {
                                  _index++;
                                });
                              },
                              child:
                                  Icon(get_icons(_index), color: Colors.grey))),
                    ],
                  );
                }),
          ),
        ],
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
              Icons.search,
              size: 25,
              color: Color.fromARGB(255, 0, 27, 50),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
              size: 25,
              color: Color.fromARGB(255, 0, 27, 50),
            ),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 25,
              color: Color.fromARGB(255, 0, 27, 50),
            ),
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
