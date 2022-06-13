// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:thincloud/Constants.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  _WalletScreenState createState() {
    return _WalletScreenState();
  }
}

class _WalletScreenState extends State<WalletScreen> {
  bool showBack = false;

  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _focusNode.hasFocus ? showBack = true : showBack = false;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double widthfull = MediaQuery.of(context).size.width;
    double heightfull = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: const Text('Cradit Cards'),
          /* flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                  Color.fromRGBO(124, 83, 164, 1),
                  Color.fromRGBO(159, 56, 154, 1),
                ])),
          ),*/
        ),
        body: SingleChildScrollView(
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.start,
            //  crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Divider(
                height: 20,
                thickness: 5,
                indent: 20,
                endIndent: 20,
                color: Color.fromRGBO(159, 56, 154, 1),
              ),
              ////////////////////////////////////////////
              Row(
                children: [
                  Image.asset(
                    'assets/images/mastercard.png',
                    width: widthfull * 0.2,
                    height: heightfull * 0.02,
                  ),
                  Column(children: [
                    Row(
                      children: [const Text('Kart NO:'), Text(kartlarim1)],
                    ),
                    Row(
                      children: [
                        const Text('SKT:'),
                        Text(sonkullanmatarihkart),
                        const Text('CVC:'),
                        Text(cvv1),
                      ],
                    ),
                    //ElevatedButton(onPressed: () {}, child: null)
                  ]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
