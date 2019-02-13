import 'package:flutter/material.dart';



var appTheme = ThemeData(
  primarySwatch: Colors.amber,
  accentColor: Colors.amberAccent,
  brightness: Brightness.dark,
  iconTheme: IconThemeData(color: Colors.white, opacity: 1.0),
  primaryTextTheme: TextTheme(
      title: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
      subtitle: TextStyle(color: Colors.amberAccent, fontWeight: FontWeight.normal, fontStyle: FontStyle.italic),
      headline: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
      subhead: TextStyle(color: Colors.amberAccent, fontWeight: FontWeight.normal, fontStyle: FontStyle.italic),
      body1: TextStyle(color: Colors.white),
      body2: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
  )
);


TextStyle contentTitleStyle = appTheme.primaryTextTheme.headline;
TextStyle contentTextStyle = appTheme.primaryTextTheme.body1;