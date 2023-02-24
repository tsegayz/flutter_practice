// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:practice/albums.dart';
import 'package:practice/home.dart';
import 'package:practice/lyrics.dart';
import 'package:practice/search.dart';
import 'package:practice/songs.dart';

void main() {
  runApp(MaterialApp(
    home: Enzemer(),
  ));
}

class Enzemer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Navigation",
        initialRoute: "/",
        routes: {
          '/': (context) => Songs(),
        });
  }
}
