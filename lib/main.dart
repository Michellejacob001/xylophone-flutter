import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  void PlaySound(int x){
    final player = AudioCache();
    player.play('note$x.wav');
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('hi there'),
              Expanded(
                child: FlatButton(
                  color: Colors.deepPurple,
                  onPressed: (){
                 PlaySound(1);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.indigo,
                  onPressed: (){
                    PlaySound(2);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.lightBlue,
                  onPressed: (){
                    PlaySound(3);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.green,
                  onPressed: (){
                    PlaySound(4);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.yellow,
                  onPressed: (){
                    PlaySound(5);
                  },
                ),
              ),
            Expanded(child:  FlatButton(
              color: Colors.orange,
              onPressed: (){
                PlaySound(6);
              },
            ),),
            
              Expanded(
                child: FlatButton(
                  color: Colors.red,
                  onPressed: (){
                    PlaySound(7);
                  },
                ),
              ),
            ],
          ),


        ),
      ),
    );
  }
}
