import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                FlatButton(
                    onPressed: (){
                      final player = AudioCache();
                      player.play('note1.wav');
                    },
                    child: Text("Note 1")
                ),
                FlatButton(
                    onPressed: (){
                      final player = AudioCache();
                      player.play('note2.wav');
                    },
                    child: Text("Note 2")
                ),
                FlatButton(
                    onPressed: (){
                      final player = AudioCache();
                      player.play('note3.wav');
                    },
                    child: Text("Note 3")
                ),
                FlatButton(
                    onPressed: (){
                      final player = AudioCache();
                      player.play('note4.wav');
                    },
                    child: Text("Note 4")
                ),
                FlatButton(
                    onPressed: (){
                      final player = AudioCache();
                      player.play('note5.wav');
                    },
                    child: Text("Note 5")
                ),
                FlatButton(
                    onPressed: (){
                      final player = AudioCache();
                      player.play('note6.wav');
                    },
                    child: Text("Note 6")
                ),
                FlatButton(
                    onPressed: (){
                      final player = AudioCache();
                      player.play('note7.wav');
                    },
                    child: Text("Note 7")
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
