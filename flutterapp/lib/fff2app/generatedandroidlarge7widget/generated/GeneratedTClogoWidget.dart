import 'package:flutter/material.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge7widget/generated/GeneratedVectorWidget125.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge7widget/generated/GeneratedVectorWidget123.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge7widget/generated/GeneratedVectorWidget124.dart';

/* Group TC logo
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedTClogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 19.0,
      height: 13.0,
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
                double scaleX = (constraints.maxWidth * percentWidth) / 19.0;

                double percentHeight = 1.0;
                double scaleY = (constraints.maxHeight * percentHeight) / 13.0;

                return Stack(children: [
                  TransformHelper.translateAndScale(
                      translateX: 0,
                      translateY: 0,
                      translateZ: 0,
                      scaleX: scaleX,
                      scaleY: scaleY,
                      scaleZ: 1,
                      child: GeneratedVectorWidget123())
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
                double percentWidth = 0.631578947368421;
                double scaleX = (constraints.maxWidth * percentWidth) / 12.0;

                double percentHeight = 1.0;
                double scaleY = (constraints.maxHeight * percentHeight) / 13.0;

                return Stack(children: [
                  TransformHelper.translateAndScale(
                      translateX: constraints.maxWidth * 0.3684210526315789,
                      translateY: 0,
                      translateZ: 0,
                      scaleX: scaleX,
                      scaleY: scaleY,
                      scaleZ: 1,
                      child: GeneratedVectorWidget124())
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
                double percentWidth = 0.3157894736842105;
                double scaleX = (constraints.maxWidth * percentWidth) / 6.0;

                double percentHeight = 0.8461538461538461;
                double scaleY = (constraints.maxHeight * percentHeight) / 11.0;

                return Stack(children: [
                  TransformHelper.translateAndScale(
                      translateX: constraints.maxWidth * 0.631578947368421,
                      translateY: constraints.maxHeight * 0.15384615384615385,
                      translateZ: 0,
                      scaleX: scaleX,
                      scaleY: scaleY,
                      scaleZ: 1,
                      child: GeneratedVectorWidget125())
                ]);
              }),
            )
          ]),
    );
  }
}
