// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.grey[200],
      appBar: AppBar( elevation: 0.0,
        backgroundColor: Colors.grey[200],
        title: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.arrow_back,
              size: 28,
              color: Color.fromARGB(255, 2, 42, 75),),
          ],
        )
      ),
      body: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container( 
                width: 340,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0)
               ),
                child: Row(
                 children: [                
                  SizedBox(width: 20,),
                  Icon(Icons.search, size: 35,color: Colors.grey[600],),
                  Text(
                    "Search your Songs by Name",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[600]
                    ),),
                  ],
                ), 
              ),
              Card(
                child: Icon(
                  Icons.filter_list_alt,
                  size: 40,
                  color: Colors.grey[800],),
              )
            ],
          ),
          Row( mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 10,),
              Text(
                "Categories",
                style: TextStyle(
                  fontSize: 23
                ),
              ),
            ],
          ),
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width:60,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Text(
                    "All",
                    style: TextStyle(
                      fontSize: 18
                    ),
                  ),
                ),
              ),
              Container(
                width:70,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                child:Center(
                  child: Text(
                    "Singers",
                    style: TextStyle(
                      fontSize: 17
                    ),
                  ),
                ) ,
              ),
              Container(
                width:80,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Text(
                    "Childrens",
                    style: TextStyle(
                      fontSize: 17
                    ),
                  ),
                ),
              ),
              Container(
                width:80,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Text(
                    "Favourite",
                    style: TextStyle(
                      fontSize: 17
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row( mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 10,),
              Text(
                "Recents",
                style: TextStyle(
                  fontSize: 23
                ),
              ),
            ],
          ),
          Container( width: 400, height: 430,
            child: ListView.builder( 
              itemCount: 20,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                  child: 
                  Stack(
                    children: [
                      Container( 
                        width: 370,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13.0)
                        ),
                      ),
                      Positioned( top: 10, left: 10,
                        child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Image(
                              image: AssetImage(
                                "assets/hana.jpg"
                              )
                            ),
                          ),
                      ),
                      Positioned( top: 25, left: 101,
                        child: Column( mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Berun Kefetu",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey[800]
                              ),
                            ),
                            Text(
                              "Hanna Tekele",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[800]
                              ),
                            ),                  
                          ],
                        )
                      ),               
                    ],
                  )
                );
              }
            ),
          ), 
        ]
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