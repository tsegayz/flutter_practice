// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unused_import, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:practice/albums.dart';
import 'package:practice/home.dart';
import 'package:practice/lyrics.dart';
import 'package:practice/allSongs.dart';
import 'package:practice/songsList.dart';
import 'package:practice/singers.dart';
import 'package:practice/kidsSong.dart';
import 'package:practice/englishSong.dart';
import 'package:practice/favorite.dart';

import 'package:go_router/go_router.dart';

void main() {
  runApp(Enzemer());
}

class Enzemer extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        routeInformationProvider: _router.routeInformationProvider,
      );

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => Home(),
      ),
      GoRoute(
        path: '/lyrics',
        builder: (context, state) => Lyrics(),
      ),
      GoRoute(
        path: '/songList',
        builder: (context, state) => SongList(),
      ),
      GoRoute(
        path: '/allSongs',
        builder: (context, state) => AllSongs(),
      ),
      GoRoute(
        path: '/englishsongs',
        builder: (context, state) => EnglishSong(),
      ),
      GoRoute(
        path: '/kidsSong',
        builder: (context, state) => KidsSong(),
      ),
      GoRoute(
        path: '/favorite',
        builder: (context, state) => Favorite(),
      ),
      GoRoute(
        path: '/singers',
        builder: (context, state) => Singers(),
      ),
      GoRoute(
        path: '/albums',
        builder: (context, state) => Albums(),
      ),
      GoRoute(
        path: '/menu',
        builder: (context, state) => Albums(),
      ),
    ],
  );
}
