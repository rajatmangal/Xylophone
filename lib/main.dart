import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(var sound) {
    final player = AudioCache();
    player.play(sound);
  }

  Widget buildKey(var color,var noteNumber) {
    return Expanded(
      child: FlatButton(
        onPressed: (){
          playSound('note$noteNumber.wav');
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red,1),
              buildKey(Colors.orange,2),
              buildKey(Colors.yellow,3),
              buildKey(Colors.green,4),
              buildKey(Colors.teal,5),
              buildKey(Colors.blueAccent,6),
              buildKey(Colors.purple,7),
            ],
          ),
        ),
      ),
    );
  }
}
