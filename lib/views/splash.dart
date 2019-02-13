import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:math';
import './app_scaffold.dart';
import '../messages.dart';


Random _random = new Random();

BehaviorSubject<String> _subject = new BehaviorSubject(
    seedValue: messages[_random.nextInt(14)]
);

const timeout = const Duration(seconds: 3);

void changeMensaje() {
  _subject.add(messages[_random.nextInt(14)]);
}


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var duration = Duration(seconds: _random.nextInt(9));

    new Timer(duration, () {
      Navigator.pushReplacement(context, new MaterialPageRoute(
          builder: (BuildContext context) => new AppScaffold()));
    });
    new Timer(timeout, () {
      changeMensaje();
    });

    return Material(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Yeni & Erne \n Textos de amor", style: TextStyle(color: Colors.amber, fontSize: 62.0, fontFamily: 'Sketch Gothic School'), textAlign: TextAlign.center,),
          Container(
            child: DecoratedBox(decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/b.png'), fit: BoxFit.contain),
              shape: BoxShape.circle,
            )
            ),
            width: 200.0,
            height: 200.0,
          ),
          StreamBuilder(
              stream: _subject.stream,
              builder: (context, snapshot) {
                return new Text(snapshot.data, style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 20.0), textAlign: TextAlign.center,);
              }
          ),
          Container(
              width: 25,
              height: 25,
              margin: EdgeInsets.only(top: 12),
              child: CircularProgressIndicator(backgroundColor: Colors.amber,))
        ],
      ),
    );
  }

}