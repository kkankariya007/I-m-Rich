import 'package:flutter/material.dart';
import 'quote.dart';

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


  List<Quote> quotes=[Quote(text:"saddsa",author:"Kunal"),
                       Quote(text:"dsad",author:"Kunal"),
                       Quote(text:"dsasdasdadsadsassadsdadsadadasda",author:"Kunal")];

  Widget quoteTemplate(quote)
  {
    return Card(
      margin: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Text(quote.text,
          style: TextStyle(
            fontSize: 15,
          ),
          ),
          Text(quote.author),
        ],
      ),
    );

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Yoo'),
          centerTitle: true,
        ),
        body:Column(crossAxisAlignment: CrossAxisAlignment.stretch,
            children:quotes.map((quote) =>quoteTemplate(quote)).toList(),//Text('${quote.text} - ${quote.author}')).toList(),
          ),

    );
  }
}
