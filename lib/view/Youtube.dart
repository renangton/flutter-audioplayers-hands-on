import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Youtube extends StatelessWidget {
  Youtube({Key? key}) : super(key: key);
  final List<Map<String, String>> soundEffect = [
    {"和太鼓でドドン": "wadaiko"},
    {"オウ！": "ou"},
    {"チーン": "chin"},
    {"伸びる": "nobiru"},
    {"シャキーン": "shakin"},
    {"ビシッとツッコミ": "bissi"},
    {"どんどんパフパフ": "dondon"},
  ];

  final AudioCache _player = AudioCache();

  void playAudio(String source) {
    _player.play(source);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent.shade100,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
        title: const Text(
          "YOUTUBE効果音",
          style: TextStyle(
            fontSize: 32,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            for (int i = 1; i < soundEffect.length; i++)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: IconButton(
                        onPressed: () {
                          final source = soundEffect.elementAt(i).values.first;
                          playAudio("sounds/$source.mp3");
                        },
                        icon: const Icon(
                          Icons.play_circle_rounded,
                          color: Colors.red,
                          size: 40,
                        ),
                      ),
                    ),
                    Text(
                      soundEffect.elementAt(i).keys.first,
                      style: const TextStyle(
                        fontSize: 30,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
