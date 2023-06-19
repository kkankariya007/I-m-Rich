import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Richiee'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black.withOpacity(0.8),
      ),


      body:Center(
        child: Text('This is the first way'),
      ),
      backgroundColor: Colors.black,
    );
  }
}
