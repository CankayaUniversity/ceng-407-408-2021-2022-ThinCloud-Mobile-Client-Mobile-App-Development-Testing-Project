// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:thincloud/Computers/Selectcomputers.dart';
import 'package:thincloud/Computers/CreateComputers.dart';

class ComputersPage extends StatefulWidget {
  const ComputersPage({Key? key}) : super(key: key);

  @override
  State<ComputersPage> createState() => _ComputersPageState();
}

class _ComputersPageState extends State<ComputersPage> {
  @override
  Widget build(BuildContext context) {
    double widthfull = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Computers Page'),
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
                    //   height: heightfull / 3,
                    width: widthfull,
                    child: Center(
                        child: ElevatedButton(
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
                              shadowColor:
                                  const Color.fromARGB(255, 130, 124, 174),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CreateComputers()),
                              );
                            },
                            child: const Text('Create Computers'))),
                  ),
                ),
                Center(
                  child: SizedBox(
                    //   height: heightfull / 3,
                    width: widthfull,
                    child: Column(
                      children: [
                        //  const Text('ComputersPage 2'),
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
                              shadowColor:
                                  const Color.fromARGB(255, 130, 124, 174),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SelectComputers()),
                              );
                            },
                            child: const Text('Select Computers')),
                        const Divider(),
                      ],
                    ),
                  ),
                )
              ],
            )));
  }
}
