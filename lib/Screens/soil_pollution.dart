import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Soil extends StatefulWidget {
  @override
  _SoilState createState() => _SoilState();
}

class _SoilState extends State<Soil> {
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
                  colors: [const Color(0xFF8D6E63), const Color(0xFF6D4C41)],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 50.0, left: 15.0, bottom: 30.0),
              child: Text('Soil Pollution',
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
                              'Soil is a thin layer made up of organic as well as inorganic materials. These materials cover the rocky surfaces of Earth. Also, the organic portion, which is derived from the decayed remains of animals and plants. While the inorganic portion is made up of rock fragments. This portion was formed over a thousand years of chemical and physical weathering of bedrock. Productive soils are useful for agriculture in order to supply the world with the required food. So, the essay on soil pollution is guided to factors causing soil pollution and the adverse effects of soil pollution.\n\n',
                          style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                          children: <TextSpan>[
                        TextSpan(
                            text: 'Some Sources of Soil Pollution :\n',
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0)),
                        TextSpan(
                            text: 'Seepage through a landfill\n',
                            style: GoogleFonts.lato(
                                color: Colors.black, fontSize: 20.0)),
                        TextSpan(
                            text: 'Solid waste seepage\n',
                            style: GoogleFonts.lato(
                                color: Colors.black, fontSize: 20.0)),
                        TextSpan(
                            text: 'Storage tanks getting ruptured',
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
