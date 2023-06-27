import 'package:flutter/material.dart';
import 'package:richh/pages/home.dart';
import 'package:richh/pages/spend.dart';

void main() {
  runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/spend': (context) => Spend(),
      }
  ));
}