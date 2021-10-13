import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dash_board/BuildCard.dart';

class LayoutGenerator extends StatefulWidget {
  const LayoutGenerator({Key? key}) : super(key: key);

  @override
  _LayoutGeneratorState createState() => _LayoutGeneratorState();
}

class _LayoutGeneratorState extends State<LayoutGenerator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Stack(children: [
          Opacity(
            opacity: 0.99,
            child: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/bg.png"), fit: BoxFit.fill)),
            ),
          ),
          SafeArea(
            child: Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 290.0),
                      child: Text(
                        'Weight',
                        style: GoogleFonts.signika(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    SizedBox(
                      height: 130,
                    ),
                    BuildCard(),
                   SizedBox(
                     height: 10,
                   ),
                   TextField(
                     decoration: InputDecoration(
                       labelText: 'Value',
                       labelStyle: TextStyle(color: Colors.white),
                       enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 1),borderRadius: BorderRadius.circular(10)),
                     ),
                   ),
                    Center(
                      child: SizedBox(
                        height: 65,
                        width: 270,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35),
                                side: BorderSide(
                                    color: Color(0xff4200FF), width: 1),
                              ),
                            ),
                            elevation: MaterialStateProperty.all<double>(20.0),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Convert ',
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff4200ff),
                                    fontSize: 27),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Color(0xff4200FF),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )),
          ),
        ])));
  }
}

