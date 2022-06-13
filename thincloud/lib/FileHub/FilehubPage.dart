// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:thincloud/FileHub/CreateFilehub.dart';
import 'package:thincloud/FileHub/SelectFilehub.dart';

class FilehubPage extends StatefulWidget {
  const FilehubPage({Key? key}) : super(key: key);

  @override
  State<FilehubPage> createState() => _FilehubPageState();
}

class _FilehubPageState extends State<FilehubPage> {
  @override
  Widget build(BuildContext context) {
    double widthfull = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('FileHub Page'),
        backgroundColor: const Color.fromARGB(
          255,
          132,
          183,
          220,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Center(
            child: SizedBox(
              //   height: heightfull,
              width: widthfull,
              child: Center(
                child: Column(
                  children: [
                    //    const Text('FilehubPage 1'),
                    ElevatedButton(
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
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CreateFilehub()),
                          );
                        },
                        child: const Text('Create FileHub'))
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              //  height: heightfull,
              width: widthfull,
              child: Column(
                children: [
                  //   const Text('FilehubPage 2'),
                  ElevatedButton(
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SelectFilehub()),
                        );
                      },
                      child: const Text('Select FileHub'))
                ],
              ),
            ),
          ),
          const Divider(),
        ],
      ),
    ));
  }
}
