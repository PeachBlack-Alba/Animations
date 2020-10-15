import 'package:animations/animations/Toggle.dart';
import 'package:flutter/material.dart';
import 'CategoryList.dart';
import 'User.dart';

class CheckBoxes extends StatefulWidget {


  @override
  _CheckBoxesState createState() => _CheckBoxesState();
}

class _CheckBoxesState extends State<CheckBoxes> {

  final _user = User();
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 20.0,
      ),
      //color: Colors.greenAccent,
      height: 500 ,
      child: Stack(
        //alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container (
            height: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
            ),
            child: Container (
              height: 500,
              margin: EdgeInsets.only(right: 10,),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
              ),
            ),
          ),
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
                      children: [
                        Container(
                            child:  Text('Cooking',
                              style: TextStyle(fontSize: 20, fontFamily: 'Play', fontWeight: FontWeight.normal, color: Colors.black),
                            ),
                        ),
                        SizedBox(width:170.0),
                        Toggle(),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child:  Text('hiking',
                            style: TextStyle(fontSize: 20, fontFamily: 'Play', fontWeight: FontWeight.normal, color: Colors.black),
                          ),
                        ),
                        SizedBox(width:190.0),
                        Toggle(),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child:  Text('traveling',
                            style: TextStyle(fontSize: 20, fontFamily: 'Play', fontWeight: FontWeight.normal, color: Colors.black),
                          ),
                        ),
                        SizedBox(width:170.0),
                        Toggle(),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child:  Text('playing an instrument',
                            style: TextStyle(fontSize: 20, fontFamily: 'Play', fontWeight: FontWeight.normal, color: Colors.black),
                          ),
                        ),
                        SizedBox(width:50.0),
                        Toggle(),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child:  Text('yoga',
                            style: TextStyle(fontSize: 20, fontFamily: 'Play', fontWeight: FontWeight.normal, color: Colors.black),
                          ),
                        ),
                        SizedBox(width:205.0),
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



