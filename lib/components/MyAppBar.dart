import 'package:flutter/material.dart';
import 'package:animations/components/List.dart';


class MyAppBar extends StatefulWidget {
  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
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
        title: Center(child: Text('Animations here please', style: TextStyle(fontSize: 20, fontFamily: 'Play', fontWeight: FontWeight.bold, color: Colors.black),
        ),
        ),
        leading: Icon(
          Icons.menu,
        ),
        iconTheme: IconThemeData(
            size: 30.0,
            color: Colors.black,
            opacity: 10.0
        ),
      ),
    );
  }
}
