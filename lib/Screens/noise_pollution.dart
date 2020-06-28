import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Noise extends StatefulWidget {
  @override
  _NoiseState createState() => _NoiseState();
}

class _NoiseState extends State<Noise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        child: Stack(children: <Widget>[
          Container(
            height: 1000.0,
            width: 1000.0,
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                  colors: [const Color(0xFFFF1744), const Color(0xFFFF8A80)],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 50.0, left: 15.0, bottom: 30.0),
              child: Text('Noise Pollution',
                  style: GoogleFonts.lato(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Container(
                height: 1000.0,
                width: 380.0,
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.all(
                      const Radius.circular(40.0),
                    )),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
                  child: RichText(
                      text: TextSpan(
                          text:
                              'Noise pollution is a form of pollution which has become very deadly nowadays. This pollution is increasing only and creates an unsafe environment. Noise pollution is when the level of noise increases more than the normal level. When the amount of noise exceeds, it becomes dangerous for living beings. Moreover, these unpleasant sounds cause several disturbances and create an imbalance in the environment.\n\n',
                          style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                          children: <TextSpan>[
                        TextSpan(
                            text: 'Some Sources of Noise Pollution :\n',
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0)),
                        TextSpan(
                            text: 'Transport Vehicles\n',
                            style: GoogleFonts.lato(
                                color: Colors.black, fontSize: 20.0)),
                        TextSpan(
                            text: 'Households\n',
                            style: GoogleFonts.lato(
                                color: Colors.black, fontSize: 20.0)),
                        TextSpan(
                            text: 'Public Address System',
                            style: GoogleFonts.lato(
                                color: Colors.black, fontSize: 20.0))
                      ])),
                )),
          )
        ]),
      ),
    );
  }
}
