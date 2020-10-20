import 'package:animations/components/MyAppBar.dart';
import 'package:flutter/material.dart';

class ImageGallery extends StatefulWidget {
  @override
  _ImageGalleryState createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<ImageGallery> {

  var _isFirstCrossFadeEnabled = false;

  _animatedCrossFade () {
    setState(() {
      _isFirstCrossFadeEnabled = !_isFirstCrossFadeEnabled;
    });
  }

  @override
  Widget build(BuildContext context) {

    const colorPink = Color(0xFFfce4ec);
    const colorGreen = Color(0xFFe8f5e9);

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: MyAppBar()),
      body: Container(
        padding: EdgeInsets.all(16.0),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Those are our facilities',
                  style:TextStyle(fontSize: 20, fontFamily: 'Play', fontWeight: FontWeight.normal, color: Colors.black)
              ),
            ),
            AnimatedCrossFade(
              duration: Duration(milliseconds: 2000),
              crossFadeState: _isFirstCrossFadeEnabled
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              firstChild: Container(
                child: Image(
                  image: AssetImage('images/circleCoWorking.png'),
                  height: 400.0,
                  width: 400.0,
                  ),
              ),
              secondChild: Container(
                child: Image(
                  image: AssetImage('images/circleGym.png'),
                  height: 400.0,
                  width: 400.0,
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                _animatedCrossFade();

              },
              tooltip: 'Press me',
              backgroundColor: colorPink ,
              child: Icon(Icons.play_arrow, size: 30.0),
            ),
          ],
        ),
      ),
    );
  }
}
