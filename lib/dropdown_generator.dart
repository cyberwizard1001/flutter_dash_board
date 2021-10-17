import 'package:flutter/material.dart';

class DropdownGenerator extends StatefulWidget {
  const DropdownGenerator({Key? key}) : super(key: key);

  @override
  _DropdownGeneratorState createState() => _DropdownGeneratorState();
}

class _DropdownGeneratorState extends State<DropdownGenerator> {
  final items = ['Kilograms', 'Grams', 'Node', 'Java', 'Python', 'PHP'];
  String? _chosenValue = "Kilograms";

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 300,
      padding: EdgeInsets.only(left: 20),
      child: DropdownButton<String>(
        value: _chosenValue,
        icon: Icon(Icons.arrow_drop_down,color: Colors.white),
        style: TextStyle(color: Colors.white),
        iconEnabledColor: Colors.black,
        items: items.map(buildMenuItem).toList(),
        onChanged: (value) {
          setState(() {
            this._chosenValue = value!;
          });
        },
      ),
    );
  }
}

DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20,color: Colors.black),
      ),
    );
