import 'package:flutter/material.dart';
import './app_drawer.dart';
import '../contents.dart';
import 'package:rxdart/rxdart.dart';

class AppScaffold extends StatelessWidget {

  Content content;

  @override
  Widget build(BuildContext context) {
    double imgSize = MediaQuery.of(context).size.shortestSide * .6;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Nuestro amor por siempre"),
      ),
      body: Container(
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  'images/corner.png',
                  width: imgSize,
                  height: imgSize,
                ),
              ),
              StreamBuilder<Content>(
                  stream: contentsSubject.stream,
                  builder: (context, snapshot) {
                    if(snapshot.hasData){
                      return ContentWidget(snapshot.data);
                    }
                    if(snapshot.hasError){
                      throw Exception(snapshot.error);
                    }
                  }
              )
        ],
      )),
      drawer: AppDrawer(),
    );
  }
}
