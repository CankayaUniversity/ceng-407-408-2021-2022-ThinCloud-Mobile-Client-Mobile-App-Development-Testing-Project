import 'package:flutter/material.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge10widget/GeneratedAndroidLarge10Widget.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge2widget/GeneratedAndroidLarge2Widget.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge12widget/GeneratedAndroidLarge12Widget.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge3widget/GeneratedAndroidLarge3Widget.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge13widget/GeneratedAndroidLarge13Widget.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge7widget/GeneratedAndroidLarge7Widget.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge14widget/GeneratedAndroidLarge14Widget.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge11widget/GeneratedAndroidLarge11Widget.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge11widget1/GeneratedAndroidLarge11Widget1.dart';

void main() {
  runApp(fff2App());
}

class fff2App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/GeneratedAndroidLarge10Widget',
      routes: {
        '/GeneratedAndroidLarge10Widget': (context) =>
            GeneratedAndroidLarge10Widget(),
        '/GeneratedAndroidLarge2Widget': (context) =>
            GeneratedAndroidLarge2Widget(),
        '/GeneratedAndroidLarge12Widget': (context) =>
            GeneratedAndroidLarge12Widget(),
        '/GeneratedAndroidLarge3Widget': (context) =>
            GeneratedAndroidLarge3Widget(),
        '/GeneratedAndroidLarge13Widget': (context) =>
            GeneratedAndroidLarge13Widget(),
        '/GeneratedAndroidLarge7Widget': (context) =>
            GeneratedAndroidLarge7Widget(),
        '/GeneratedAndroidLarge14Widget': (context) =>
            GeneratedAndroidLarge14Widget(),
        '/GeneratedAndroidLarge11Widget': (context) =>
            GeneratedAndroidLarge11Widget(),
        '/GeneratedAndroidLarge11Widget1': (context) =>
            GeneratedAndroidLarge11Widget1(),
      },
    );
  }
}
