import 'package:animations/animations/FadeIn.dart';
import 'package:animations/screens/ImageGallery.dart';
import 'package:animations/screens/profile/profile.dart';
import 'package:animations/screens/quiz/QuizBody.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'ListItems.dart';

class List extends StatefulWidget {
  @override
  ListState createState() => ListState();
}

class ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    const colorPink = Color(0xFFfce4ec);
    const colorGreen = Color(0xFFe8f5e9);
    var fadeInCounter = 0;

    return SingleChildScrollView(
      child: Container(
        height: 430,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            colorPink,
            colorGreen,
          ]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: <Widget>[
              FadeIn(
                delaySecs: 0.5 * fadeInCounter++,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile()),
                    );
                  },
                  child: ListItems(
                    icon: LineAwesomeIcons.user_times,
                    text: 'Profile',
                  ),
                ),
              ),
              FadeIn(
                delaySecs: 0.5 * fadeInCounter++,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => QuizBody()),
                    );
                  },
                  child: ListItems(
                    icon: LineAwesomeIcons.history,
                    text: 'Quiz',
                  ),
                ),
              ),
              FadeIn(
                delaySecs: 0.5 * fadeInCounter++,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ImageGallery()),
                    );
                  },
                  child: ListItems(
                    icon: LineAwesomeIcons.question_circle,
                    text: 'Check Images',
                  ),
                ),
              ),
              FadeIn(
                delaySecs: 0.5 * fadeInCounter++,
                child: GestureDetector(
                  onTap: () {
                    print('container pressed4');
                  },
                  child: ListItems(
                    icon: LineAwesomeIcons.cog,
                    text: 'More things 2',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
