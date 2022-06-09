import 'package:flutter/material.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge10widget/generated/GeneratedRectangle4550Widget2.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge10widget/generated/GeneratedGroupWidget2.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge10widget/generated/GeneratedRectangle4551Widget2.dart';

/* Group Group 3
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroup3Widget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 94.0,
      height: 61.0,
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
              width: 75.0,
              height: 61.0,
              child: GeneratedRectangle4550Widget2(),
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
                final double width = constraints.maxWidth * 0.10638297872340426;

                final double height =
                    constraints.maxHeight * 0.16393442622950818;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.05319148936170213,
                      y: constraints.maxHeight * 0.7049180327868853,
                      z: 0,
                      child: Container(
                        width: width,
                        height: height,
                        child: GeneratedGroupWidget2(),
                      ))
                ]);
              }),
            ),
            Positioned(
              left: 74.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 20.0,
              height: 61.0,
              child: GeneratedRectangle4551Widget2(),
            )
          ]),
    );
  }
}
