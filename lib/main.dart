import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(xylophone());
}

class xylophone extends StatelessWidget {
  const xylophone({super.key});

  void Playsound(int soundnum)
  {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundnum.wav'));
  }


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  Playsound(1)
                },
                child: Text(
                  'Play me',
                  style: TextStyle(
                    backgroundColor: Colors.blue[300],
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Playsound(2);
                },
                child: Text(
                  'Play me',
                  style: TextStyle(
                    backgroundColor: Colors.indigo[300],
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                 Playsound(3);
                },
                child: Text(
                  'Play me',
                  style: TextStyle(
                    backgroundColor: Colors.green[300],
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Playsound(4);
                },
                child: Text(
                  'Play me',
                  style: TextStyle(
                    backgroundColor: Colors.purple[300],
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Playsound(5);
                },
                child: Text(
                  'Play me',
                  style: TextStyle(
                    backgroundColor: Colors.cyanAccent[300],
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Playsound(6);
                },
                child: Text(
                  'Play me',
                  style: TextStyle(
                    backgroundColor: Colors.red[300],
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Playsound(7);
                },
                child: Text(
                  'Play me',
                  style: TextStyle(
                    backgroundColor: Colors.pink[300],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
