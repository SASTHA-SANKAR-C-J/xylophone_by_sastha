import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void playSound(int? i) {
    final player = AudioPlayer();
    player.play(AssetSource('note$i.wav'));
  }

  Expanded buildKey({Color? color, int? soundnum}) {
    return Expanded(
        child: TextButton(
      onPressed: () {
        playSound(soundnum);
      },
      child: Text(""),
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(color),
      ),
    ));
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(color: Colors.red, soundnum: 1),
            buildKey(color: Colors.orange, soundnum: 2),
            buildKey(color: Colors.yellow, soundnum: 3),
            buildKey(color: Colors.green, soundnum: 4),
            buildKey(color: Colors.blue, soundnum: 5),
            buildKey(color: Colors.indigo, soundnum: 6),
            buildKey(color: Colors.purple, soundnum: 7),
          ],
        )),
      ),
    );
  }
}
