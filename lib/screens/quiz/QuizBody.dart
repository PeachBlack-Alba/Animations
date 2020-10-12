import 'package:animations/components/MyAppBar.dart';
import 'package:flutter/material.dart';
import 'CategoryList.dart';



class QuizBody extends StatefulWidget {
  @override
  QuizBodyState createState() => QuizBodyState();
}

class QuizBodyState extends State<QuizBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: MyAppBar()),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child:Stack(
                children: <Widget>[
                  Container (
                    margin: EdgeInsets.only(top:70.0),
                    decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                    ),
                  ),
                  CategoryList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
