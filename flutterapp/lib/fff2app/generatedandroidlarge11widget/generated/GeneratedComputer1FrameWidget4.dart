import 'package:flutter/material.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge11widget/generated/GeneratedVectorWidget178.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge11widget/generated/GeneratedRenderWidget2.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge11widget/generated/GeneratedGroup3Widget4.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge11widget/generated/GeneratedWindowsWidget4.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge11widget/generated/GeneratedVectorWidget179.dart';

/* Frame Computer 1 Frame
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedComputer1FrameWidget4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95.0,
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
              width: 94.0,
              height: 61.0,
              child: GeneratedGroup3Widget4(),
            ),
            Positioned(
              left: 5.0,
              top: 3.0,
              right: null,
              bottom: null,
              width: 41.0,
              height: 21.0,
              child: GeneratedRenderWidget2(),
            ),
            Positioned(
              left: 5.0,
              top: 15.0,
              right: null,
              bottom: null,
              width: 42.0,
              height: 21.0,
              child: GeneratedWindowsWidget4(),
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
                double percentWidth = 0.10526315789473684;
                double scaleX = (constraints.maxWidth * percentWidth) / 10.0;

                double percentHeight = 0.16393442622950818;
                double scaleY = (constraints.maxHeight * percentHeight) / 10.0;

                return Stack(children: [
                  TransformHelper.translateAndScale(
                      translateX: constraints.maxWidth * 0.8315789473684211,
                      translateY: constraints.maxHeight * 0.13114754098360656,
                      translateZ: 0,
                      scaleX: scaleX,
                      scaleY: scaleY,
                      scaleZ: 1,
                      child: GeneratedVectorWidget178())
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
                double percentWidth = 0.10526315789473684;
                double scaleX = (constraints.maxWidth * percentWidth) / 10.0;

                double percentHeight = 0.16393442622950818;
                double scaleY = (constraints.maxHeight * percentHeight) / 10.0;

                return Stack(children: [
                  TransformHelper.translateAndScale(
                      translateX: constraints.maxWidth * 0.8315789473684211,
                      translateY: constraints.maxHeight * 0.7049180327868853,
                      translateZ: 0,
                      scaleX: scaleX,
                      scaleY: scaleY,
                      scaleZ: 1,
                      child: GeneratedVectorWidget179())
                ]);
              }),
            )
          ]),
    );
  }
}
