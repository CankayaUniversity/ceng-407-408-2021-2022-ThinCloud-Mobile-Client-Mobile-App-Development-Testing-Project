import 'package:flutter/material.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge13widget/generated/GeneratedRectangle1Widget4.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge13widget/generated/GeneratedFrame20Widget1.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge13widget/generated/GeneratedFrame21Widget1.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge13widget/generated/GeneratedEllipse2Widget6.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge13widget/generated/GeneratedFrame19Widget1.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge13widget/generated/GeneratedStatusButtonWidget4.dart';

/* Group Menu
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedMenuWidget4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 65.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 0.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 300.0,
              height: 65.0,
              child: GeneratedRectangle1Widget4(),
            ),
            Positioned(
              left: 172.0,
              top: 15.0,
              right: null,
              bottom: null,
              width: 36.0,
              height: 36.0,
              child: GeneratedEllipse2Widget6(),
            ),
            Positioned(
              left: 100.0,
              top: 15.0,
              right: null,
              bottom: null,
              width: 32.0,
              height: 33.0,
              child: GeneratedFrame20Widget1(),
            ),
            Positioned(
              left: 25.0,
              top: 17.0,
              right: null,
              bottom: null,
              width: 33.0,
              height: 29.0,
              child: GeneratedFrame19Widget1(),
            ),
            Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                final double width = constraints.maxWidth * 0.06666666666666667;

                final double height =
                    constraints.maxHeight * 0.2153846153846154;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.6,
                      y: constraints.maxHeight * 0.4,
                      z: 0,
                      child: Container(
                        width: width,
                        height: height,
                        child: GeneratedStatusButtonWidget4(),
                      ))
                ]);
              }),
            ),
            Positioned(
              left: 249.0,
              top: 17.0,
              right: null,
              bottom: null,
              width: 30.0,
              height: 31.0,
              child: GeneratedFrame21Widget1(),
            )
          ]),
    );
  }
}