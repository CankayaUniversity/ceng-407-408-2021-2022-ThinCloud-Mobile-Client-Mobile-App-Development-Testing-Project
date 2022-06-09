import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge11widget1/generated/GeneratedSettingsButtonWidget8.dart';

/* Frame Frame 15
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedFrame15Widget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28.0,
      height: 27.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                final double width = constraints.maxWidth * 0.6785714285714286;

                final double height =
                    constraints.maxHeight * 0.5925925925925926;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.14285714285714285,
                      y: constraints.maxHeight * 0.18518518518518517,
                      z: 0,
                      child: Container(
                        width: width,
                        height: height,
                        child: GeneratedSettingsButtonWidget8(),
                      ))
                ]);
              }),
            )
          ]),
    );
  }
}
