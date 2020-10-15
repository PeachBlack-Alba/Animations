import 'package:animations/animations/Toggle.dart';
import 'package:flutter/material.dart';
import 'CategoryList.dart';
import 'User.dart';

class CheckBoxes extends StatefulWidget {


  @override
  CheckBoxesState createState() => CheckBoxesState();
}

class CheckBoxesState extends State<CheckBoxes> {
  static const colorPink = Color(0xFFfce4ec);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 20.0,
      ),
      decoration: BoxDecoration(
        color: colorPink,
        borderRadius: BorderRadius.circular(22),
      ),
      height: 500 ,
      child: Stack(
        //alignment: Alignment.bottomCenter,
        children: <Widget>[
          Center(
            child: Positioned (
              child: SizedBox(
                height: 500.0,
                //width: size.width,
                  child: Column(
                  children: <Widget>[
                    SizedBox(height: 20.0),
                    Text('Interests',
                      style: TextStyle(fontSize: 20, fontFamily: 'Play', fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              child:  Text('Cooking',
                                style: TextStyle(fontSize: 20, fontFamily: 'Play', fontWeight: FontWeight.normal, color: Colors.black),
                              ),
                          ),
                         // SizedBox(width:170.0),
                          Toggle(),
                        ],
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child:  Text('Hiking',
                            style: TextStyle(fontSize: 20, fontFamily: 'Play', fontWeight: FontWeight.normal, color: Colors.black),
                          ),
                        ),
                       // SizedBox(width:190.0),
                        Toggle(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child:  Text('Traveling',
                            style: TextStyle(fontSize: 20, fontFamily: 'Play', fontWeight: FontWeight.normal, color: Colors.black),
                          ),
                        ),
                       // SizedBox(width:170.0),
                        Toggle(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child:  Text('Music',
                            style: TextStyle(fontSize: 20, fontFamily: 'Play', fontWeight: FontWeight.normal, color: Colors.black),
                          ),
                        ),
                       // SizedBox(width:50.0),
                        Toggle(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child:  Text('Yoga',
                            style: TextStyle(fontSize: 20, fontFamily: 'Play', fontWeight: FontWeight.normal, color: Colors.black),
                          ),
                        ),
                     //   SizedBox(width:205.0),
                        Toggle(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



