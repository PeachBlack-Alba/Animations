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
                    Text('Interests', style: TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold)),
                    CheckboxListTile(
                        title: const Text('Cooking'),
                        value: _user.passions[User.PassionCooking],
                        onChanged: (val) {
                          setState(() =>
                          _user.passions[User.PassionCooking] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Traveling'),
                        value: _user.passions[User.PassionTraveling],
                        onChanged: (val) {
                          setState(() => _user
                              .passions[User.PassionTraveling] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Hiking'),
                        value: _user.passions[User.PassionHiking],
                        onChanged: (val) {
                          setState(() =>
                          _user.passions[User.PassionHiking] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Music'),
                        value: _user.passions[User.PassionMusic],
                        onChanged: (val) {
                          setState(() =>
                          _user.passions[User.PassionMusic] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Yoga'),
                        value: _user.passions[User.PassionYoga],
                        onChanged: (val) {
                          setState(() =>
                          _user.passions[User.PassionYoga] = val);
                        })
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



