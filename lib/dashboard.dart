import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:ui';


class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

 void temperature(){
    // Navigator.push(
    //     context,
    //     MaterialPageRoute(builder: (context) => Temperature()));
  }

 void weight(){
   // Navigator.push(
   //     context,
   //     MaterialPageRoute(builder: (context) => Weight()));
 }

 void length(){
   // Navigator.push(
   //     context,
   //     MaterialPageRoute(builder: (context) => Length()));
 }

 void volume(){
   // Navigator.push(
   //     context,
   //     MaterialPageRoute(builder: (context) => Volume()));
 }

 void dataunits(){
   // Navigator.push(
   //     context,
   //     MaterialPageRoute(builder: (context) => DataUnits()));
 }

 void power(){
   // Navigator.push(
   //     context,
   //     MaterialPageRoute(builder: (context) => Power()));
 }

 void numbers(){
   // Navigator.push(
   //     context,
   //     MaterialPageRoute(builder: (context) => Numbers()));
 }

 void speed(){
   // Navigator.push(
   //     context,
   //     MaterialPageRoute(builder: (context) => Speed()));
 }

  Card makeDashboardItem(String title, IconData icon, Function executethis) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 1.0,
      margin: new EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: new InkWell(
          onTap: () {
            executethis();
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              SizedBox(height: 50.0),
              Center(
                child: Icon(
                  icon,
                  size: 40.0,
                  color: Color(0xffF05454),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  title,
                  style: TextStyle(fontSize:20.0, color: Color(0xff222831)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("LETS CONVERT!",style: TextStyle(color: Colors.black),),
          brightness: Brightness.dark,
          toolbarHeight: 75,
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
          child: GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.all(3.0),
            children: <Widget>[
              makeDashboardItem('Temperature',Icons.ac_unit,temperature),
              makeDashboardItem('Volume',Icons.aspect_ratio,volume),
              makeDashboardItem('Length',Icons.compare_arrows,length),
              makeDashboardItem('Weight',Icons.view_in_ar,weight),
              makeDashboardItem('Data Units',Icons.account_tree_sharp,dataunits),
              makeDashboardItem('Power',Icons.wb_incandescent_outlined,power),
              makeDashboardItem('Numbers',Icons.widgets,numbers),
              makeDashboardItem('Speed',Icons.add_location_alt_outlined,speed),
            ],
          ),
        ),
      ),
    );
  }
}
