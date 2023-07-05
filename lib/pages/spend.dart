import 'package:flutter/material.dart';
import 'package:richh/pages/spend.dart';
import 'package:richh/services/people.dart';
import 'package:richh/services/things.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:richh/pages/home.dart';


class Spend extends StatefulWidget {
  const Spend({Key? key}) : super(key: key);

  @override
  State<Spend> createState() => _SpendState();
}
int mon=0;
class _SpendState extends State<Spend> {

  List <Things> th=[
    Things(name: 'Fruits', img: 'fruits.jpg', price: 24,quan:0),
    Things(name: 'Car', img: 'car.jpg', price: 130000,quan:0),
    Things(name: 'Plane', img: 'plane.jpg', price: 120000000,quan:0),
  ];

  Map data={};
  int c=50;
  int k=1;
  late int lmon;

  @override
  Widget build(BuildContext context) {
    while(k>0){
    final data= ModalRoute.of(context)!.settings.arguments as Map;
    lmon=data['value'];
    mon=data['value'];
    k--;
    }
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
    children:<Widget>
    [
      //
      //   Padding(
      //     padding: const EdgeInsets.fromLTRB(0.0, 9.0, 0.0, 0.0),
      //     child: Container(
      //     // width: MediaQuery.of(context).size.width/2,
      //     height: MediaQuery.of(context).size.width/1.7,
      //     child: Stack(
      //       alignment: Alignment.center,
      //       children: [SfRadialGauge(
      //         axes: <RadialAxis> [
      //               RadialAxis(
      //                 minimum: 0,
      //                 maximum: lmon.toDouble(),
      //                 showLabels: false,
      //                 showTicks: false,
      //                 axisLineStyle:AxisLineStyle(
      //                   thickness: 0.2,
      //                   cornerStyle: CornerStyle.bothCurve,
      //                   color:mon<0.3*lmon?Colors.redAccent:Colors.greenAccent,
      //                   thicknessUnit: GaugeSizeUnit.factor,
      //                 ),
      //
      //                 pointers: <GaugePointer>[
      //                   RangePointer(
      //                     value: mon.toDouble(),
      //                     cornerStyle: CornerStyle.bothCurve,
      //                     width: 0.2,
      //                     sizeUnit: GaugeSizeUnit.factor,
      //                     color: Colors.blueAccent,
      //                   ),
      //                 ],
      //               ),
      //         ],
      //       ),
      //
      //         Transform.scale(
      //           scale: 4.0,
      //           child: CircleAvatar(
      //             backgroundImage:AssetImage('images/billgates.jpg',
      //             ),
      //           ),
      //         ),
      //   ],
      //     ),
      //   ),
      // ),
      //     SizedBox(height:100),
      //     ElevatedButton(
      //     child: Text(mon.toString()),
      //       onPressed: () {
      //         setState(() {
      //           mon=mon-50;
      //
      //         });
      //             print(mon);
      //             print(c);
      //       },
      //   ),
        SizedBox(height: 10,),

        GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 250,// Number of columns in the grid
            ),
            itemCount: th.length,
            itemBuilder: (BuildContext context,int index){

              return Padding(padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text("Hello"),
                  Image.asset('images/$th[index].img'),
                  Row(
                    children:<Widget> [

                      IconButton(
                        onPressed:(){
                          setState(() {
                            th[index].quan+=1;
                          });
                        },
                        icon: Icon(Icons.add),),
                    ],
                  ),

                ],
              ),

              );

            }
        ),

    ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
