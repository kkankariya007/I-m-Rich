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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('$amount'),
        centerTitle: true,
      ),
      body: Center(
        child:
        FloatingActionButton(
          child:Icon(Icons.abc_outlined),
              onPressed: () {
                setState(() {
                  amount-=1001;

                });
              },
    ),
      ),
    );
  }
}
