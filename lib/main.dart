import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home:rich(),
  ));
}

class rich extends StatefulWidget {
  const rich({Key? key}) : super(key: key);

  @override
  State<rich> createState() => _richState();
}

class _richState extends State<rich> {


  List<String> quotes=["saddsa","dsad","dsadadasda"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Yoo'),
          centerTitle: true,
        ),
        body:Column(
          children:quotes.map((quote){
            return Text('$quote');
          }).toList(),
        ),

    );
  }
}
