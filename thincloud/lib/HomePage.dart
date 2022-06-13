// ignore_for_file: file_names, unnecessary_import, implementation_imports, unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:thincloud/Firebase_login/animation/fadeanimation.dart';
import 'package:thincloud/Firebase_login/auth/main_page.dart';
import 'package:thincloud/Firebase_login/screens/home.dart';
import 'package:thincloud/Firebase_login/screens/login.dart';
import 'package:thincloud/Computers/ComputersPage.dart';
import 'package:thincloud/Constants.dart';
import 'package:thincloud/Domain/DomainPage.dart';
import 'package:thincloud/FileHub/FilehubPage.dart';
import 'package:thincloud/Navbar/navbar.dart';
import 'package:thincloud/UserPlan.dart/UserplanPage.dart';
import 'package:thincloud/creditcard/cardAdd.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    useruid = FirebaseAuth.instance.currentUser!.uid;

    double widthfull = MediaQuery.of(context).size.width;
    double heightfull = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                Color.fromARGB(255, 130, 124, 174),
                Color.fromARGB(
                  255,
                  132,
                  183,
                  220,
                ),
              ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FadeAnimation(
                delay: 1,
                child: Center(
                  child: Container(
                    //  margin: const EdgeInsets.only(right: 35),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/thincloud-bg.png")),
                    ),
                    height: heightfull / 4,
                    width: widthfull / 1.5,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: heightfull / 8,
                    width: widthfull / 2 - 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Kartekle()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              side: const BorderSide(color: Colors.white)),
                          elevation: 50,
                          primary: const Color.fromARGB(
                            255,
                            132,
                            183,
                            220,
                          ),
                          onPrimary: Colors.white,
                          shadowColor: const Color.fromARGB(255, 130, 124, 174),
                        ),
                        child: const Text('Credit Card')),
                  ),
                  SizedBox(
                    height: heightfull / 8,
                    width: widthfull / 2 - 50,
                    child: ElevatedButton(
                        onPressed: () {
                          FirebaseAuth.instance.signOut();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainScreen()),
                          );
                          /*    if (username != '') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MainScreen()),
                            );
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()),
                            );
                          }*/
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              side: const BorderSide(color: Colors.white)),
                          elevation: 50,
                          primary: const Color.fromARGB(
                            255,
                            132,
                            183,
                            220,
                          ),
                          onPrimary: Colors.white,
                          shadowColor: const Color.fromARGB(255, 130, 124, 174),
                        ),
                        child: const Text('Log Out')),
                  ),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: heightfull / 8,
                    width: widthfull / 2 - 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DomainPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              side: const BorderSide(color: Colors.white)),
                          elevation: 50,
                          primary: const Color.fromARGB(
                            255,
                            132,
                            183,
                            220,
                          ),
                          onPrimary: Colors.white,
                          shadowColor: const Color.fromARGB(255, 130, 124, 174),
                        ),
                        child: const Text('Domains')),
                  ),
                  SizedBox(
                    height: heightfull / 8,
                    width: widthfull / 2 - 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FilehubPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              side: const BorderSide(color: Colors.white)),
                          elevation: 50,
                          primary: const Color.fromARGB(
                            255,
                            132,
                            183,
                            220,
                          ),
                          onPrimary: Colors.white,
                          shadowColor: const Color.fromARGB(255, 130, 124, 174),
                        ),
                        child: const Text('File Hub ')),
                  )
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: heightfull / 8,
                    width: widthfull / 2 - 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const UserPlanPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              side: const BorderSide(color: Colors.white)),
                          elevation: 50,
                          primary: const Color.fromARGB(
                            255,
                            132,
                            183,
                            220,
                          ),
                          onPrimary: Colors.white,
                          shadowColor: const Color.fromARGB(255, 130, 124, 174),
                        ),
                        child: const Text('User Plan')),
                  ),
                  SizedBox(
                    height: heightfull / 8,
                    width: widthfull / 2 - 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ComputersPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              side: const BorderSide(color: Colors.white)),
                          elevation: 50,
                          primary: const Color.fromARGB(
                            255,
                            132,
                            183,
                            220,
                          ),
                          onPrimary: Colors.white,
                          shadowColor: const Color.fromARGB(255, 130, 124, 174),
                        ),
                        child: const Text('Computers')),
                  ),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /* SizedBox(
                    height: heightfull / 8,
                    width: widthfull / 2 - 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Navbar()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              side: const BorderSide(color: Colors.white)),
                          elevation: 50,
                          primary: const Color.fromARGB(
                            255,
                            132,
                            183,
                            220,
                          ),
                          onPrimary: Colors.white,
                          shadowColor: const Color.fromARGB(255, 130, 124, 174),
                        ),
                        child: const Text('File Manager')),
                  ),*/
                  SizedBox(
                    height: heightfull / 8,
                    width: widthfull - 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Navbar()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              side: const BorderSide(color: Colors.white)),
                          elevation: 50,
                          primary: const Color.fromARGB(
                            255,
                            132,
                            183,
                            220,
                          ),
                          onPrimary: Colors.white,
                          shadowColor: const Color.fromARGB(255, 130, 124, 174),
                        ),
                        child: const Text(
                            'Computers\nFile Manager\nStatus\nSettings')),
                  ),
                ],
              ),
              const Divider()
            ],
          ),
        ),
      ),
    );
  }
}
