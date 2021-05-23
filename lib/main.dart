import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  void playsound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

  Expanded buildkey({Color c, int soundnumber}) {
    return Expanded(
      child: FlatButton(
        color: c,
        onPressed: () {
          playsound(soundnumber);
        },
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
              buildkey(c: Colors.red, soundnumber: 1),
              buildkey(c: Colors.orange, soundnumber: 2),
              buildkey(c: Colors.yellow, soundnumber: 3),
              buildkey(c: Colors.green, soundnumber: 4),
              buildkey(c: Colors.blue, soundnumber: 5),
              buildkey(c: Colors.indigo, soundnumber: 6),
              buildkey(c: Colors.purple, soundnumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
