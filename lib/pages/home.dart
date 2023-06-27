import 'package:flutter/material.dart';
import 'package:richh/services/people.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<PeopleList> ppl=[
    PeopleList(img:'billates.jpg', name:'Bill Gates', money:50000),
    PeopleList(img:'elon', name:'Elon Musk', money:503403),
    PeopleList(img:'mukesh.png',  name:'Mukesh Ambani', money:5343),
    PeopleList(img: 'kunal.png', name:'K', money:3214),
    PeopleList(img: 'jk.png', name: 'jssl', money: 324),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Re'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black.withOpacity(0.8),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0,8.0,0.0,0.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 300,// Number of columns in the grid
            ),
            itemCount: ppl.length,
            itemBuilder: (BuildContext context, int index) {
              var person = ppl[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child:Column(
                  children: <Widget>[
                    InkWell(
                    onTap:() {
                      Navigator.pushNamed(context, '/spend',arguments: {
                        'img':ppl[index].img,
                        'name':ppl[index].name,
                        'value':ppl[index].money,
                      });
              print("hello");
              },
                child: Image.asset('images/${ppl[index].img}',
                ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(ppl[index].name,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),),
                    ),
                    Text('\$${ppl[index].money}',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),),
                  ],
                ),

              );
}
                       ),
                    // Text(ppl[index].name),



              ),
    ),
      backgroundColor: Colors.black,
    );

  }
}