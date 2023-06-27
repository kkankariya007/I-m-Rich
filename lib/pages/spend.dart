import 'package:flutter/material.dart';
import 'package:richh/services/people.dart';
import 'package:richh/pages/home.dart';

class Spend extends StatefulWidget {
  const Spend({Key? key}) : super(key: key);

  @override
  State<Spend> createState() => _SpendState();
}

class _SpendState extends State<Spend> {

  Map data={};
  @override
  Widget build(BuildContext context) {

    final data= ModalRoute.of(context)!.settings.arguments as Map;
    print(data['value']);
    return Scaffold(
      appBar: AppBar(
        title: Text("hey"),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: Text("Hey"),
      ),
    );
  }
}
