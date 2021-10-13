import 'package:dash_board/dashboard.dart';
import 'package:flutter/material.dart';

class Temperature extends StatefulWidget{
  @override
  _TemperatureState createState() => _TemperatureState();

}

class _TemperatureState extends State<Temperature>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff222831),
        appBar:AppBar(title: Text('TEMPERATURE'),
          centerTitle: true,
        backgroundColor: Color(0xff30475E),),
        body: Container(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 40,left: 16.0),
                child: Text('Celsius <--> Fahrenheit <--> Kelvin',
                  style: TextStyle(color: Colors.white,
                  fontSize: 25),),),
              Padding(padding: EdgeInsets.only(top: 30,left: MediaQuery.of(context).size.width*0.5),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 1,
                      blurRadius: 21,
                      offset: Offset(0,0),
                    ),
                  ]
                ),
                child: MaterialButton(
                  color: Color(0xffF05454),
                  elevation: 10.0,
                  onPressed: (){},
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Icon(Icons.compare_arrows,color: Colors.white,size: 70,),
                  ),
                ),
              )
              ),
            ],
          ),
        ),
      ),
    );
  }
}