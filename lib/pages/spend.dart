import 'package:flutter/material.dart';
import 'package:richh/pages/spend.dart';
import 'package:richh/services/people.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:richh/pages/home.dart';

class Spend extends StatefulWidget {
  const Spend({Key? key}) : super(key: key);


  @override
  State<Spend> createState() => _SpendState();
}
int mon=0;

class _SpendState extends State<Spend> {
  Map data={};
  int c=50;
  int k=1;


  @override
  Widget build(BuildContext context) {
    while(k>0){
    final data= ModalRoute.of(context)!.settings.arguments as Map;
    mon=data['value']; k--;}
  return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 105,
        centerTitle: true,
        title: Text('\$$mon',
        style: TextStyle(
          fontSize: 45,
        ),),
        backgroundColor: Colors.black.withOpacity(0.9),
      ),
      body: Center(
        child:Column(
    children:<Widget> [
      Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
        child: Container(
          // width: MediaQuery.of(context).size.width/2,
          height: MediaQuery.of(context).size.width/1.8,
          child: Stack(
            alignment: Alignment.center,
            children: [SfRadialGauge(
              axes: <RadialAxis> [
                    RadialAxis(
                      minimum: -1,
                      maximum: 100,
                      showLabels: false,
                      showTicks: false,
                      axisLineStyle:AxisLineStyle(
                        thickness: 0.1,
                        cornerStyle: CornerStyle.bothCurve,
                        color: Colors.greenAccent,
                        thicknessUnit: GaugeSizeUnit.factor,

                      ),
                    ),
              ],
            ),
              Transform.scale(
                scale: 4.0,
                child: CircleAvatar(
                  backgroundImage:AssetImage('images/billgates.jpg',
                  
                  ),
                ),
              )
        ],
          ),
        ),
      ),
          ElevatedButton(
          child: Text(mon.toString()),
            onPressed: () {
              setState(() {
                mon=mon-50;

              });
                  print(mon);
                  print(c);
            },
        ),
    ],
        ),
      ),
      // backgroundColor: Colors.bla,
    );
  }
}
