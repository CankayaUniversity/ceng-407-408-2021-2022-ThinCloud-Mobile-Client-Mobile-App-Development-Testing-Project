import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/transform/transform.dart';

/* Rectangle Rounded Rectangle
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedRoundedRectangleWidget7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TransformHelper.rotate(
        a: 1.00,
        b: -0.00,
        c: 0.00,
        d: 1.00,
        child: TransformHelper.translate(
            x: -0.75,
            y: -0.75,
            z: 0,
            child: Container(
              width: 15.5,
              height: 19.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.0),
                border: Border.all(
                  width: 1.5,
                  color: Color.fromARGB(255, 133, 182, 220),
                ),
              ),
            )));
  }
}
