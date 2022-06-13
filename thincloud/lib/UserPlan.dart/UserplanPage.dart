// ignore_for_file: file_names, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class UserPlanPage extends StatefulWidget {
  const UserPlanPage({Key? key}) : super(key: key);

  @override
  State<UserPlanPage> createState() => _UserPlanPageState();
}

String choosengears = '';
String choosenos = '';
String plan = '';

class _UserPlanPageState extends State<UserPlanPage> {
  @override
  Widget build(BuildContext context) {
    double widthfull = MediaQuery.of(context).size.width;
    double heightfull = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('User Plan'),
        backgroundColor: const Color.fromARGB(
          255,
          132,
          183,
          220,
        ),
      ),
      body: Column(children: [
        const Text('Please choose your gears.'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    choosengears = 'Office';
                  });
                },
                child: const Text('Office')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    choosengears = 'Chrome';
                  });
                },
                child: const Text('Chrome')),
          ],
        ),
        Text('Choosen Gears: $choosengears'),
        const Divider(),
        const Text(
            'Please choose your operating system and gears.\nYou cannot change it later'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    choosenos = 'Windows';
                  });
                },
                child: const Text('Windows')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    choosenos = 'Ubuntu';
                  });
                },
                child: const Text('Ubuntu')),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    choosenos = 'Debian';
                  });
                },
                child: const Text('Debian')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    choosenos = 'Pardus';
                  });
                },
                child: const Text('Pardus'))
          ],
        ),
        Text('Choosen OS: $choosenos'),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            const Padding(padding: EdgeInsets.only(left: 20)),
            SizedBox(
                width: widthfull / 2,
                height: heightfull / 2,
                child: Container(
                  color: Colors.grey,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onPrimary: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          plan = 'Basic Plan';
                        });
                      },
                      child: const Text(
                          'Basic Plan\n\n7/24 Suport\nPersonal Use\nBasic CPU\nBasic RAM')),
                  //Text('7/24 Suport\nPersonal Use\nBasic CPU\nBasic RAM')
                )),
            const Padding(padding: EdgeInsets.only(left: 20)),
            SizedBox(
                width: widthfull / 2,
                height: heightfull / 2,
                child: Container(
                  color: Colors.grey,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onPrimary: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          plan = 'Standart Plan';
                        });
                      },
                      child: const Text(
                          'Standart Plan\n\n7/24 Suport\nPersonal Use\nStandart CPU\nStandart RAM')),
                )),
            const Padding(padding: EdgeInsets.only(left: 20)),
            SizedBox(
                width: widthfull / 2,
                height: heightfull / 2,
                child: Container(
                  color: Colors.grey,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onPrimary: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          plan = 'Professional Plan';
                        });
                      },
                      child: const Text(
                          'Professional Plan\n\n7/24 Suport\nCommertial Use\nXXXXXX CPU\nXXXXXX RAM')),
                )),
            const Padding(padding: EdgeInsets.only(left: 20)),
          ]),
        ),
        Text('Choosen Plan: ' + plan)
      ]),
    ));
  }
}
