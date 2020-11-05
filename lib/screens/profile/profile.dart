import 'package:animations/components/MyAppBar.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'ProfileListItem.dart';
import 'package:animations/animations/FadeIn.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var fadeInCounter = 0;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: MyAppBar()),
      body: Container(
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

        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: <Widget>[
              FadeIn(
                delaySecs: 0.5 * fadeInCounter++,
                child:GestureDetector(
                onTap: () {
                  print('container pressed');
                },
                child: ProfileListItems(
                  icon: LineAwesomeIcons.user,
                  text: 'Hobbies',
                ),
              ),),

              FadeIn(
                delaySecs: 0.5 * fadeInCounter++,
                child:GestureDetector(
                onTap: () {
                  print('container pressed2');
                },
                child: ProfileListItems(
                  icon: LineAwesomeIcons.history,
                  text: 'Recent Events',
                ),
              ),),

              FadeIn(
                delaySecs: 0.5 * fadeInCounter++,
                child:GestureDetector(
                onTap: () {
                  print('container pressed3');
                },
                child: ProfileListItems(
                  icon: LineAwesomeIcons.question_circle,
                  text: 'My Contracts',
                ),
              ),),

              FadeIn(
                delaySecs: 0.5 * fadeInCounter++,
                child:GestureDetector(
                onTap: () {
                  print('container pressed4');
                },
                child: ProfileListItems(
                  icon: LineAwesomeIcons.cog,
                  text: 'Configuration',
                ),
              ),),

              FadeIn(
                delaySecs: 0.5 * fadeInCounter++,
                child:GestureDetector(
                onTap: () {
                  print('container pressed5');
                },
                child: ProfileListItems(
                  icon: LineAwesomeIcons.user_plus,
                  text: 'Friends',
                ),
              ),),

              FadeIn(
                delaySecs: 0.5 * fadeInCounter++,
                child:GestureDetector(
                onTap: () {
                  print('container pressed6');
                },
                child: ProfileListItems(
                  icon: LineAwesomeIcons.sign_out,
                  text: 'Logout',
                  hasNavigation: false,
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
