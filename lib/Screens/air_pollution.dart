import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Air extends StatefulWidget {
  @override
  _AirState createState() => _AirState();
}

class _AirState extends State<Air> {
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
                  colors: [const Color(0xFF00AA12), const Color(0xFF95E08E)],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 50.0, left: 15.0, bottom: 30.0),
              child: Text('Air Pollution',
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
                              'The fossil fuel, firewood, and other things that we burn produce oxides of carbons which got released into the atmosphere. Earlier there happens to be a large number of trees which can easily filter the air we breathe in. But with the increase in demand for land, the people started cutting down of trees which caused deforestation. That ultimately reduced the filtering capacity of the tree. Moreover, during the last few decades, the numbers of fossil fuel burning vehicle increased rapidly which increased the number of pollutants in the air.\n\n',
                          style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                          children: <TextSpan>[
                        TextSpan(
                            text: 'Some Sources of Air Pollution :\n',
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0)),
                        TextSpan(
                            text: 'Greehouse Gas Effects\n',
                            style: GoogleFonts.lato(
                                color: Colors.black, fontSize: 20.0)),
                        TextSpan(
                            text: 'Forest Burn Down\n',
                            style: GoogleFonts.lato(
                                color: Colors.black, fontSize: 20.0)),
                        TextSpan(
                            text: 'Industrial Effluents',
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
