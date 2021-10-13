import 'package:flutter/material.dart';

class BuildCard extends StatefulWidget {
  BuildCard({Key? key}) : super(key: key);

  @override
  _BuildCardState createState() => _BuildCardState();
}

class _BuildCardState extends State<BuildCard> {
  var _index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 230,
        child: PageView.builder(
            itemCount: 10,
            controller: PageController(viewportFraction: 0.78),
            onPageChanged: (int index) => setState(() => _index = index),
            itemBuilder: (_, i) {
              return Transform.scale(
                scale: i == _index ? 1 : 0.9,
                child: Card(
                  color: Color(0x751C0B31),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  child: Center(
                    child: Text(
                      "Card ${i + 1}",
                      style: TextStyle(fontSize: 32,color: Colors.white),
                    ),
                  ),
                ),
              );
            }
        ));
  }
}