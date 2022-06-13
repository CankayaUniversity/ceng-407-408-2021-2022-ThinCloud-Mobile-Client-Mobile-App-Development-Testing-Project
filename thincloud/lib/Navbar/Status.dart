// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    final widthfull = MediaQuery.of(context).size.width;
    final heightfull = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage("assets/images/status.png")),
        ),
        //   height: heightfull,
        //    width: widthfull,
      ),
    );
  }
}
