import 'package:animations/screens/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'package:animations/animations/FadeIn.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();

  }

  startTime() async {
    var duration = new Duration(seconds: 4);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => Home()
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Colors.greenAccent,
                      Colors.white
                    ]
                )
            ),          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FadeIn(
                        Image(
                          image: AssetImage('lib/assets/images/logored.png'),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      FadeIn(
                        Text(
                          'Welcome to your new home',
                            style:TextStyle(fontSize: 20, fontFamily: 'Play', fontWeight: FontWeight.normal, color: Colors.black)
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FadeIn(
                        CircularProgressIndicator()),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    FadeIn(
                      Text(
                        'Loading',
                        softWrap: true,
                        textAlign: TextAlign.center,
                          style:TextStyle(fontSize: 20, fontFamily: 'Play', fontWeight: FontWeight.normal, color: Colors.black)
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
