// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'card.dart';

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

  final List<String> items = <String>[
    "Singers",
    "All Songs",
    "English Song",
    "Kids Song",
    "Favorites"
  ];
  final List<double> size = <double>[0];

  int index = 0;

  static List<CardModel> itemPack = [
    CardModel("2021", "new1 ", "Album1"),
    CardModel("2021", "new2 ", "Album2"),
    CardModel("2021", "new3 ", "Album3"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[10],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        title: Center(
          child: Text(
            "Mezmur Debtor",
            style:
                TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 37, 68)),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: ListView.builder(
                itemCount: items.length,
                // ignore: sized_box_for_whitespace
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.grey[100],
                    height: 60,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 40,
                            ),
                            Icon(
                              Icons.music_note,
                              size: 25,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              color: Colors.black,
                              width: 1.1,
                              height: 30,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              items[index],
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_outlined,
                              size: 25,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Center(
            child: Text(
              "Recently Added",
              style: TextStyle(
                  fontSize: 22, color: Color.fromARGB(255, 255, 0, 0)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60))),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 250,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6,
                  childAspectRatio: 1,
                ),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            )
                          ]),
                      child: Stack(
                        children: [
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 70.0),
                                  child: Text(
                                    itemPack[index % 3].year,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                Text(
                                  itemPack[index % 3].title,
                                  style: TextStyle(fontSize: 18),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 70.0),
                                  child: Text(
                                    itemPack[index % 3].album,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Container(
          //       width: 160,
          //       height: 130,
          //       decoration: BoxDecoration(
          //           color: Colors.grey[300],
          //           borderRadius: BorderRadius.circular(20.0)),
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           Text(
          //             "Agezege",
          //             style: TextStyle(fontSize: 18),
          //           ),
          //           Padding(
          //             padding: const EdgeInsets.only(left: 45.0, top: 10),
          //             child: Text(
          //               "Album 1",
          //               style: TextStyle(fontSize: 14),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //     Container(
          //       width: 160,
          //       height: 130,
          //       decoration: BoxDecoration(
          //           color: Colors.grey[300],
          //           borderRadius: BorderRadius.circular(20.0)),
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           Text(
          //             "Yezelalem Fetari",
          //             style: TextStyle(fontSize: 18),
          //           ),
          //           Padding(
          //             padding: const EdgeInsets.only(left: 45.0, top: 10),
          //             child: Text(
          //               "Album 2",
          //               style: TextStyle(fontSize: 14),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
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
