import 'package:flutter/material.dart';
import './config.dart';
import './views/splash.dart';



GlobalKey<_MyHomePageState> globalKey = new GlobalKey(debugLabel: "MyHomePageStateKey");


void main() => runApp(MyApp(key: globalKey,));

class MyApp extends StatelessWidget {

  MyApp({key : Key}): super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yeni & Erne',
      theme: appTheme,
      home: MyHomePage(),
    );
  }


}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}
