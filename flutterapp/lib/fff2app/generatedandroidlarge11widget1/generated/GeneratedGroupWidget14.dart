import 'package:flutter/material.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge11widget1/generated/GeneratedVectorWidget217.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge11widget1/generated/GeneratedVectorWidget216.dart';
import 'package:flutterapp/helpers/transform/transform.dart';

/* Group Group
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroupWidget14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10.0,
      height: 10.0,
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
                double percentWidth = 1.0;
                double scaleX = (constraints.maxWidth * percentWidth) / 10.0;

                double percentHeight = 1.0;
                double scaleY = (constraints.maxHeight * percentHeight) / 10.0;

                return Stack(children: [
                  TransformHelper.translateAndScale(
                      translateX: constraints.maxWidth * -1.554312234475219e-16,
                      translateY:
                          constraints.maxHeight * -2.2204460492503132e-17,
                      translateZ: 0,
                      scaleX: scaleX,
                      scaleY: scaleY,
                      scaleZ: 1,
                      child: GeneratedVectorWidget216())
                ]);
              }),
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
                double percentWidth = 0.15624700784683226;
                double scaleX =
                    (constraints.maxWidth * percentWidth) / 1.5624700784683228;

                double percentHeight = 0.5683750152587891;
                double scaleY =
                    (constraints.maxHeight * percentHeight) / 5.683750152587891;

                return Stack(children: [
                  TransformHelper.translateAndScale(
                      translateX: constraints.maxWidth * 0.40625,
                      translateY: constraints.maxHeight * 0.21875,
                      translateZ: 0,
                      scaleX: scaleX,
                      scaleY: scaleY,
                      scaleZ: 1,
                      child: GeneratedVectorWidget217())
                ]);
              }),
            )
          ]),
    );
  }
}
