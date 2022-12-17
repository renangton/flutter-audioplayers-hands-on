import 'package:flutter/material.dart';

class HandsOn extends StatelessWidget {
  const HandsOn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text(
          // ToDo 好きなタイトルに変更
          "ハンズオン",
          style: TextStyle(
            fontSize: 32,
          ),
        ),
      ),
      // ToDo bodyを記述
    );
  }
}
