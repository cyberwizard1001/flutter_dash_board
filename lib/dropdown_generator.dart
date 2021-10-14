import 'package:flutter/material.dart';
class DropdownGenerator extends StatefulWidget {
  const DropdownGenerator({Key? key}) : super(key: key);

  @override
  _DropdownGeneratorState createState() => _DropdownGeneratorState();
}

class _DropdownGeneratorState extends State<DropdownGenerator> {
  @override
  Widget build(BuildContext context) {
    var _chosenValue = "";
    return DropdownButton<String>(
      focusColor:Colors.white,
      value: _chosenValue,
      //elevation: 5,
      style: TextStyle(color: Colors.white),
      iconEnabledColor:Colors.black,
      items: <String>[
        'Android',
        'IOS',
        'Flutter',
        'Node',
        'Java',
        'Python',
        'PHP',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value,style:TextStyle(color:Colors.black),),
        );
      }).toList(),
      hint:Text(
        "Please choose a langauage",
        style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w500),
      ),
      onChanged: (String? value) {
        setState(() {
          _chosenValue = value!;
        });
      },
    );
  }
}

