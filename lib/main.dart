import 'package:flutter/material.dart';
import 'package:richh/pages/home.dart';

void main() {
  runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        // '': (context) => Playg(),
      }
  ));
}