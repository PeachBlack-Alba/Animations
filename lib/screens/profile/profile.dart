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
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            FadeIn(1.0, GestureDetector(
              onTap: () {
                print('container pressed');
              },
              child: ProfileListItems(
                icon: LineAwesomeIcons.user,
                text: 'Hobbies',
              ),
            ),),

            FadeIn(2,GestureDetector(
              onTap: () {
                print('container pressed2');
              },
              child: ProfileListItems(
                icon: LineAwesomeIcons.history,
                text: 'Recent Events',
              ),
            ),),

            FadeIn(2.33, GestureDetector(
              onTap: () {
                print('container pressed3');
              },
              child: ProfileListItems(
                icon: LineAwesomeIcons.question_circle,
                text: 'My Contracts',
              ),
            ),),

            FadeIn(2.66,GestureDetector(
              onTap: () {
                print('container pressed4');
              },
              child: ProfileListItems(
                icon: LineAwesomeIcons.cog,
                text: 'Configuration',
              ),
            ),),

            FadeIn(4,GestureDetector(
              onTap: () {
                print('container pressed5');
              },
              child: ProfileListItems(
                icon: LineAwesomeIcons.user_plus,
                text: 'Friends',
              ),
            ),),

            FadeIn(4.5,GestureDetector(
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
    );
  }
}
