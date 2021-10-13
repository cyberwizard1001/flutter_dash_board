import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dash_board/BuildCard.dart';
import 'package:dash_board/Globals.dart' as globals;

class LayoutGenerator extends StatefulWidget {
  const LayoutGenerator({Key? key}) : super(key: key);

  @override
  _LayoutGeneratorState createState() => _LayoutGeneratorState();
}

class _LayoutGeneratorState extends State<LayoutGenerator> {
  final valueInputController = TextEditingController();
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
          SingleChildScrollView(
            child: SafeArea(
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
                     Padding(
                       padding: const EdgeInsets.only(top: 30,bottom: 40.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           SizedBox(
                             width: 120,
                             height: 55,
                             child: TextField(
                               textAlign: TextAlign.center,
                               style: GoogleFonts.montserrat(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                               controller: valueInputController,
                               decoration: InputDecoration(
                                 labelText: 'Value',
                                 labelStyle: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w300),
                                 enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 0.5),borderRadius: BorderRadius.circular(10)),
                                 focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 0.5),borderRadius: BorderRadius.circular(10)),
                                 focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 0.5),borderRadius: BorderRadius.circular(10)),
                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 20.0),
                             child: Text('Grams',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                           )
                         ],
                       ),
                     ),
                      Center(
                        child: SizedBox(
                          height: 65,
                          width: 270,
                          child: OutlinedButton(
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
                              elevation: MaterialStateProperty.all<double>(5.0),
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
          ),
        ])));
  }

  void valueUpdate(){
    globals.value = valueInputController.text as int;
  }
}

