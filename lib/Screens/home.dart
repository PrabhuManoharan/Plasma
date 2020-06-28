import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../custom_icons.dart';
import 'homePage.dart';
import './air_pollution.dart';
import './water_pollution.dart';
import './noise_pollution.dart';
import './soil_pollution.dart';
import './environ.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 200, 1),
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0.0,
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Row(
                children: <Widget>[
                  Text('51 US AQI',
                      style: TextStyle(color: Colors.yellow, fontSize: 15.0))
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          SizedBox(height: 20.0),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Choose Category',
                style: GoogleFonts.lato(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.start,
              ),
            ),
          ),
          SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonTheme(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.green)),
                buttonColor: Colors.green,
                minWidth: 150.0,
                height: 100.0,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Air()));
                  },
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Custom.city,
                          color: Colors.white,
                          size: 50.0,
                        ),
                      ),
                      Text(
                        "Air Pollution",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 20)),
              ButtonTheme(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.blue)),
                buttonColor: Colors.blue,
                minWidth: 150.0,
                height: 100.0,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Water()));
                  },
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Custom.no_plastic,
                          color: Colors.white,
                          size: 50.0,
                        ),
                      ),
                      Text(
                        "Water Pollution",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonTheme(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red)),
                buttonColor: Colors.red,
                minWidth: 150.0,
                height: 100.0,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Noise()));
                  },
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Custom.noise,
                          color: Colors.white,
                          size: 50.0,
                        ),
                      ),
                      Text(
                        "Noise Pollution",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 20)),
              ButtonTheme(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.brown)),
                buttonColor: Colors.brown,
                minWidth: 150.0,
                height: 100.0,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Soil()));
                  },
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Custom.garbage,
                          color: Colors.white,
                          size: 50.0,
                        ),
                      ),
                      Text(
                        "Soil Pollution",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30.0),
          Container(
            height: 300.0,
            decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(40.0),
                  topRight: const Radius.circular(40.0),
                )),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                    child: Text(
                      'Popular',
                      style: GoogleFonts.lato(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: 200.0,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ButtonTheme(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            padding: EdgeInsets.all(8.0),
                            buttonColor: Colors.purple,
                            minWidth: 180.0,
                            height: 190.0,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              },
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      'assets/images/mask.png',
                                      width: 90.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "Covid 19",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15.0),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ButtonTheme(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            padding: EdgeInsets.all(8.0),
                            buttonColor: Colors.green,
                            minWidth: 180.0,
                            height: 190.0,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyApp()));
                              },
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Custom.waste_water,
                                      color: Colors.white,
                                      size: 90.0,
                                    ),
                                  ),
                                  Text(
                                    "Help Environment",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15.0),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
