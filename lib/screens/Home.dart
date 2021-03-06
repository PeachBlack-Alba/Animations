import 'package:animations/components/MyAppBar.dart';
import 'package:flutter/material.dart';
import 'package:animations/components/List.dart';

class Home extends StatefulWidget {

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    const colorPink = Color(0xFFfce4ec);
    const colorGreen = Color(0xFFe8f5e9);
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Colors.greenAccent,
                      Colors.white
                    ]
                )
            ),
          ),
          title: Center(
            child: Text('Animations here please',
              style: TextStyle(fontSize: 20, fontFamily: 'Play', fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          leading:
          GestureDetector(
            onTap: (){
              print('I have been pressed');
            },
            child: Icon(
              Icons.menu,
            ),
          ),
          iconTheme: IconThemeData(
              size: 30.0,
              color: Colors.black,
              opacity: 10.0
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient:LinearGradient(
                colors: [
                  colorPink,
                  colorGreen,
                ]
            ),
          ),
          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    Container(
                      height: 80,
                      width: double.infinity,
                      padding: EdgeInsets.all (10),
                      decoration: BoxDecoration(
                        color: colorPink,
                      ),
                      child:Center(
                          child: Text('I am putting here a text ',
                            style: TextStyle(fontSize: 20, fontFamily: 'Play', fontWeight: FontWeight.normal, color: Colors.black),
                      )),
                    ),
                     Container(
                       height: 50,
                        width: double.infinity,
                        padding: EdgeInsets.all (10),
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                        child: Center(
                          child: Text('Select a tab',
                            style: TextStyle(fontSize: 20, fontFamily: 'Play', fontWeight: FontWeight.normal, color: Colors.white),
                          ),
                        )
                    ),
                 Container(
                      width: double.infinity,
                      child: List(),
                    ),
                ],
              ),
        )
        );
  }
}