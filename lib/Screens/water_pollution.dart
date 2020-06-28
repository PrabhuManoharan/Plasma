import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Water extends StatefulWidget {
  @override
  _WaterState createState() => _WaterState();
}

class _WaterState extends State<Water> {
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
                  colors: [const Color(0xFF00BFA5), const Color(0xFF64FFDA)],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 50.0, left: 15.0, bottom: 30.0),
              child: Text('Water Pollution',
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
                              'Water pollution is the contamination of water bodies (like oceans, seas, lakes, rivers, aquifers, and groundwater) usually caused due to human activities. Water pollution is any change, minor or major in the physical, chemical or biological properties of water that eventually leads to a detrimental consequence of any living organism. Drinking water, called Potable Water, is considered safe enough for human and animal consumption.\n\n',
                          style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                          children: <TextSpan>[
                        TextSpan(
                            text: 'Some Sources of Water Pollution :\n',
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0)),
                        TextSpan(
                            text: 'Domestic Waste\n',
                            style: GoogleFonts.lato(
                                color: Colors.black, fontSize: 20.0)),
                        TextSpan(
                            text: 'Industrial effluents\n',
                            style: GoogleFonts.lato(
                                color: Colors.black, fontSize: 20.0)),
                        TextSpan(
                            text: 'Insecticides and pesticides',
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
