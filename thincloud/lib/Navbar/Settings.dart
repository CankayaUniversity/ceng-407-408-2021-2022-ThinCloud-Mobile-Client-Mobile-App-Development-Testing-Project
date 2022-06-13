// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    final widthfull = MediaQuery.of(context).size.width;
    final heightfull = MediaQuery.of(context).size.height;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(onPressed: () {}, child: const Text('UPDATE')),
          SizedBox(
            height: heightfull / 10,
            width: widthfull,
            child: Card(
              child: Column(children: const [
                Text('Software Information'),
                Text('ThinCloud Admin Version'),
                Text('2018-0.1')
              ]),
            ),
          ),
          SizedBox(
            height: heightfull / 10,
            width: widthfull,
            child: Card(
              child: Column(children: const [
                Text('OS Version Info'),
                Text('Virtual Platform Version'),
                Text('2018-0.1')
              ]),
            ),
          ),
          SizedBox(
            height: heightfull / 10,
            width: widthfull,
            child: Card(
              child: Column(children: const [
                Text('Platform Infoo'),
                Text('Windows 10 1803'),
                Text('17134.167 Build')
              ]),
            ),
          ),
          SizedBox(
            height: heightfull / 10,
            width: widthfull,
            child: Card(
              child: Column(children: const [
                Text('ThinCloud Info'),
                Text('Rakun ThinCloud TCCCC'),
                Text('Version 01')
              ]),
            ),
          ),
          SizedBox(
            height: heightfull / 10,
            width: widthfull,
            child: Card(
              child: Column(children: const [
                Text('Force Rules to All Networks'),
                Text('Just Force Rules'),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
