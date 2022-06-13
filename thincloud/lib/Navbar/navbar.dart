// ignore_for_file: unused_local_variable, prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:thincloud/Navbar/ComputersList.dart';
import 'package:thincloud/Navbar/FileManager.dart';
import 'package:thincloud/Navbar/Settings.dart';
import 'package:thincloud/Navbar/Status.dart';
import 'package:thincloud/UserPlan.dart/UserplanPage.dart';

int? selectedpageg;

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int selectedPage = 0;

  final _pageOptions = [
    ComputersList(),
    FileManager(),
    Status(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    double widthfull = MediaQuery.of(context).size.width;
    double heightfull = MediaQuery.of(context).size.height;
    double iconboyut = widthfull * 0.09;

    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: true,
              centerTitle: true,
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UserPlanPage()),
                      );
                    },
                    icon: Icon(Icons.person))
              ],
              title: Text(
                'Thincloud',
              ),
              backgroundColor: Color.fromARGB(
                255,
                132,
                183,
                220,
              ),
            ),
            backgroundColor: Colors.white,
            body: _pageOptions[selectedPage],
            bottomNavigationBar: Theme(
                data: Theme.of(context).copyWith(
                  canvasColor: Color.fromARGB(255, 130, 124, 174),
                ),
                child: BottomNavigationBar(
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.laptop, size: iconboyut),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.storage_outlined, size: iconboyut),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon:
                          Icon(Icons.perm_device_information, size: iconboyut),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.settings, size: iconboyut),
                      label: '',
                    ),
                  ],
                  selectedItemColor: Color.fromARGB(255, 247, 229, 207),
                  //elevation: 1.0,
                  unselectedItemColor: Color.fromARGB(
                    255,
                    132,
                    183,
                    220,
                  ),
                  currentIndex: selectedPage,
                  // fixedColor: Color(0xfff2921d),
                  //backgroundColor: Color.fromARGB(255, 9, 8, 7),
                  //type: BottomNavigationBarType.shifting,
                  onTap: (index) {
                    setState(() {
                      selectedPage = index;
                    });
                  },
                ))));
  }
}
