import 'package:flutter/material.dart';
import 'results.dart';
import 'Home.dart';
import 'Loading.dart';
import 'Safe.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' :(context)=> Loading(),
        '/Safe':(context) => Safe(),
        '/Home':(context) => Home(),
        '/Results':(context) => Results(),
      }

  ));
}



