// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:thincloud/Domain/CreateDomain.dart';
import 'package:thincloud/Domain/SelectDomain.dart';

class DomainPage extends StatefulWidget {
  const DomainPage({Key? key}) : super(key: key);

  @override
  State<DomainPage> createState() => _DomainPageState();
}

class _DomainPageState extends State<DomainPage> {
  @override
  Widget build(BuildContext context) {
    double widthfull = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Domain Page'),
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
                                    builder: (context) => const CreateDomain()),
                              );
                            },
                            child: const Text('CreateDomain'))),
                  ),
                ),
                Center(
                  child: SizedBox(
                    //   height: heightfull / 3,
                    width: widthfull,
                    child: Column(
                      children: [
                        //  const Text('domainpage 2'),
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
                                    builder: (context) => const SelectDomain()),
                              );
                            },
                            child: const Text('SelectDomain')),
                        const Divider(),
                      ],
                    ),
                  ),
                )
              ],
            )));
  }
}
