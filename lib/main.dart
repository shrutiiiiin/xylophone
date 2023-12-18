import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(xylophone());
}

class xylophone extends StatelessWidget {
  const xylophone({super.key});

  void Playsound(int soundnum) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundnum.wav'));
  }

  Expanded buildkey(Color Colors, {required int soundNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          Playsound(soundNumber);
        },
        child: Text(
          'play me',
          style: TextStyle(
            fontSize: 20,
            color: Colors,
          ),
        ),
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
              buildkey(Colors.blue, soundNumber: 1),
              buildkey(Colors.purple, soundNumber: 2),
              buildkey(Colors.lightGreen, soundNumber: 3),
              buildkey(Colors.orangeAccent, soundNumber: 4),
              buildkey(Colors.red, soundNumber: 5),
              buildkey(Colors.indigo, soundNumber: 6),
              buildkey(Colors.pinkAccent, soundNumber: 7)
            ],
          ),
        ),
      ),
    );
  }
}
