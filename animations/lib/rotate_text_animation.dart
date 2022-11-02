import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

/*
class RotateAnimatedText extends AnimatedText {
  final double? transitionHeight;
  final AlignmentGeometry alignment;
  final TextDirection textDirection;
  final bool rotateOut;

  RotateAnimatedText(
    String text, {
    TextAlign textAlign = TextAlign.start,
    TextStyle? textStyle,
    Duration duration = const Duration(milliseconds: 2000),
    this.transitionHeight,
    this.alignment = Alignment.center,
    this.textDirection = TextDirection.ltr,
    this.rotateOut = true,
  }) : super(
          text: text,
          textAlign: textAlign,
          textStyle: textStyle,
          duration: duration,
        );

  late Animation<double> _fadeIn, _fadeOut;
  late Animation<Alignment> _slideIn, _slideOut;

  @override
  void initAnimation(AnimationController controller) {
    final direction = textDirection;

    final inIntervalEnd = rotateOut ? 0.4 : 1.0;

    _slideIn = AlignmentTween(
      begin: Alignment.topCenter.add(alignment).resolve(direction),
      end: Alignment.center.add(alignment).resolve(direction),
    ).animate(CurvedAnimation(
        parent: controller,
        curve: Interval(0.0, inIntervalEnd, curve: Curves.linear)));

    _fadeIn = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: controller,
        curve: Interval(0.0, inIntervalEnd, curve: Curves.easeOut)));

    if (rotateOut) {
      _slideOut = AlignmentTween(
        begin: Alignment.center.add(alignment).resolve(direction),
        end: Alignment.bottomCenter.add(alignment).resolve(direction),
      ).animate(CurvedAnimation(
          parent: controller,
          curve: const Interval(0.7, 1.0, curve: Curves.linear)));

      _fadeOut = Tween<double>(begin: 1.0, end: 0.0).animate(CurvedAnimation(
          parent: controller,
          curve: const Interval(0.7, 1.0, curve: Curves.easeIn)));
    }
  }

  @override
  Widget completeText(BuildContext context) =>
      rotateOut ? SizedBox.shrink() : super.completeText(context);

  @override
  Widget animatedBuilder(BuildContext context, Widget? child) {
    final fontSize =
        textStyle?.fontSize ?? DefaultTextStyle.of(context).style.fontSize;

    return SizedBox(
      height: transitionHeight ?? (fontSize! * 10 / 3),
      child: AlignTransition(
        alignment: _slideIn.value.y != 0.0 || !rotateOut ? _slideIn : _slideOut,
        child: Opacity(
          opacity: _fadeIn.value != 1.0 || !rotateOut ? _fadeIn.value : _fadeOut.value,
          child: textWidget(text),
        )
      )
    );
  }
}
*/

class RotateText extends StatelessWidget {
  const RotateText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
        const SizedBox(width: 20.0, height: 100.0),
        const Text(
          'Be',
          style: TextStyle(fontSize: 43.0),
        ),
        const SizedBox(width: 20.0, height: 100.0),
        DefaultTextStyle(
          style: const TextStyle(
            fontSize: 40.0,
            fontFamily: 'Horizon',
            color: Color(0xFF894242),
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              RotateAnimatedText('AWESOME'),
              RotateAnimatedText('OPTIMISTIC'),
              RotateAnimatedText('DIFFERENT'),
            ],
            onTap: () {
              print("Tap Event");
            },
          ),
        ),
      ]),
    ));
  }
}
