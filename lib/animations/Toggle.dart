import 'package:flutter/material.dart';

class Toggle extends StatefulWidget {

  final String title;
  final bool value;
  final Function onChanged;

  const Toggle({Key key, this.title, this.value, this.onChanged}) : super(key: key);

  @override
  ToggleState createState() => ToggleState();
}

class ToggleState extends State<Toggle> {
  bool toggleValue =  false;

  @override
  Widget build(BuildContext context) {
    const colorGreen = Color(0xFFe8f5e9);
    return AnimatedContainer(
      padding: EdgeInsets.all(5),
      duration: Duration(milliseconds: 900),
      height: 50.0,
      width: 120.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        color: colorGreen,
      ),
      child: Stack(
        children: <Widget> [
          AnimatedPositioned(
            duration: Duration(milliseconds: 900),
            curve: Curves.easeIn,
            top: 3.0,
            // If value toggle is true be on the left, if not, on the right
            left: toggleValue ? 60.0 : 0.0,
            right: toggleValue ? 0.0 : 60.0,
            child: InkWell(
              onTap: toggleButton,
              child:
              Row(
                children: [
                  Text(''),
                  AnimatedSwitcher(
                    duration: Duration(milliseconds: 900),
                    transitionBuilder: (Widget child, Animation<double> animation) {
                      return ScaleTransition(
                          child: child, scale: animation);
                    },
                    child: toggleValue ? Icon(Icons.check, color: Colors.lightGreen, size: 35.0,
                        key: UniqueKey()
                    ) :Icon(Icons.cancel_outlined, color: Colors.red, size: 35.0,
                    key: UniqueKey()
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  toggleButton () {
    setState((){
      toggleValue = !toggleValue;
    });
  }
}
