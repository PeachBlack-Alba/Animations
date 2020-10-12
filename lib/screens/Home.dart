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
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: MyAppBar()),
        body: Container(
            height: size.height,
            decoration: BoxDecoration(
                  color:
                    Colors.white,
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
                    child:Center(child: Text('I am putting here a text ', style: TextStyle(fontSize: 20, fontFamily: 'Play', fontWeight: FontWeight.normal, color: Colors.black),
                    )),
                  ),



                   Container(
                     height: 80,
                      width: double.infinity,
                      padding: EdgeInsets.all (10),
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Center(
                        child: Text('Screen Title',  style: TextStyle(fontSize: 20, fontFamily: 'Play', fontWeight: FontWeight.normal, color: Colors.white),

                        ),
                      )
                  ),

                
                Expanded(
                  child: Container(
                    width: double.infinity,
                    child: List(),
                  ),
                ),
              ],
            )
        )
    );
  }
}