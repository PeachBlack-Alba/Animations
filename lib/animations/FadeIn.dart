import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

enum AniProps { opacity, translateX }
var globalCounter = 0;

class FadeIn extends StatefulWidget {

  final Widget child;
  FadeIn(this.child);

  @override
  _FadeInState createState() => _FadeInState();
}

class _FadeInState extends State<FadeIn> {
  @override
  Widget build(BuildContext context) {

    var delaySecs = globalCounter;
    globalCounter+=1;
    print('Estoy aqui posicionada $globalCounter');

    const durationSecs = 0.5;
    const opacityFade = 0.0;
    const translateXFade = 130.0;
    final tween = MultiTween<AniProps>()
      ..add(AniProps.opacity, opacityFade.tweenTo(1.0))
      ..add(AniProps.translateX, translateXFade.tweenTo(0.0));

    return PlayAnimation<MultiTweenValues<AniProps>>(
      delay: (delaySecs).round().seconds,
      duration: durationSecs.seconds,
      tween: tween,
      child: widget.child,
      builder: (context, child, value) => Opacity(
        opacity: value.get(AniProps.opacity),
        child: Transform.translate(
          offset: Offset(value.get(AniProps.translateX), 0),
          child: child,
        ),
      ),
    );
  }
}