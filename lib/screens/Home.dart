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
        //backgroundColor: colorGreen,
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
        title: Center(child: Text('Animations here please', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, wordSpacing:2),)),
        leading: Icon(
          Icons.menu,
        ),
        iconTheme: IconThemeData(
            size: 30.0,
            color: Colors.black,
            opacity: 10.0
        ),
      ),
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
                    child:Center(child: Text('I am putting here a text ', style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black))),
                  ),



                   Container(
                     height: 80,
                      width: double.infinity,
                      padding: EdgeInsets.all (10),
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Center(
                        child: Text('Screen Title', style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white, fontSize: 15, ),
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