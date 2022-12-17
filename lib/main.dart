import 'package:flutter/material.dart';
import 'package:flutter_audioplayers_hands_on/view/AnswerButton.dart';
import 'package:flutter_audioplayers_hands_on/view/HandsOn.dart';
import 'package:flutter_audioplayers_hands_on/view/Youtube.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static List<Widget> pages = <Widget>[
    AnswerButton(),
    Youtube(),
    HandsOn(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        waveType: WaveType.circularReveal,
      ),
    );
  }
}
