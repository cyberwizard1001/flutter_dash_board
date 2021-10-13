import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  color: Color(0x75100223),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                          child: Text('32.34',
                            style: GoogleFonts.montserrat(fontSize: 72,fontWeight: FontWeight.w400,color: Colors.white),
                          ),
                        ),
                      Center(child: Text('Kilograms',
                        style: GoogleFonts.montserrat(fontSize: 25,fontWeight: FontWeight.w400,color: Colors.white),
                      ),)
                    ],
                  ),
                ),
              );
            }
        ));
  }
}