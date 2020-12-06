import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play("note$soundNumber.wav");
  }

  Expanded buildKey({Color color, int soundNumber, String keyNote}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text("$keyNote"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(
                  color: Colors.purple, soundNumber: 1, keyNote: "Sa / Do"),
              buildKey(
                  color: Colors.indigo, soundNumber: 2, keyNote: "Re / Re"),
              buildKey(color: Colors.blue, soundNumber: 3, keyNote: "Ga / Mi"),
              buildKey(color: Colors.green, soundNumber: 4, keyNote: "Ma / Fa"),
              buildKey(
                  color: Colors.yellow, soundNumber: 5, keyNote: "Pa / So"),
              buildKey(
                  color: Colors.orange, soundNumber: 6, keyNote: "Dha / La"),
              buildKey(color: Colors.red, soundNumber: 7, keyNote: "Ni / Ti"),
            ],
          ),
        ),
      ),
    );
  }
}
