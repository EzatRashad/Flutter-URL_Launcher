import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

class BTN extends StatefulWidget {
  const BTN({super.key, required this.txt, this.onPress});

  final String txt;
  final void Function()? onPress;

  @override
  State<BTN> createState() => _BTNState();
}

class _BTNState extends State<BTN> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: AnimatedButton(
        onPress: widget.onPress,
        height: 70,
        width: 200,
        text: widget.txt,
        isReverse: true,
        selectedBackgroundColor: Colors.teal,
        selectedTextColor: Colors.black,
        transitionType: TransitionType.RIGHT_CENTER_ROUNDER,
        textStyle: const TextStyle(
            fontSize: 28,
            letterSpacing: 5,
            color: Colors.white,
            fontWeight: FontWeight.w300),
        backgroundColor: Colors.black,
        borderRadius: 15,
      ),
    );
  }
}
