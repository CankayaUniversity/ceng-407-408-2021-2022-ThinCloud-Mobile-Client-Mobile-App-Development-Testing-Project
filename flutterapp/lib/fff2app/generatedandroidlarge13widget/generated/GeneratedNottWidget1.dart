import 'package:flutter/material.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge13widget/generated/GeneratedEllipse3Widget5.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge13widget/generated/GeneratedVectorWidget97.dart';
import 'package:flutterapp/helpers/transform/transform.dart';

/* Group Nott
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedNottWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      height: 30.0,
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
              width: 30.0,
              height: 30.0,
              child: GeneratedEllipse3Widget5(),
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
                double percentWidth = 0.5333333333333333;
                double scaleX = (constraints.maxWidth * percentWidth) / 16.0;

                double percentHeight = 0.5333333333333333;
                double scaleY = (constraints.maxHeight * percentHeight) / 16.0;

                return Stack(children: [
                  TransformHelper.translateAndScale(
                      translateX: constraints.maxWidth * 0.23333333333333334,
                      translateY: constraints.maxHeight * 0.23333333333333334,
                      translateZ: 0,
                      scaleX: scaleX,
                      scaleY: scaleY,
                      scaleZ: 1,
                      child: GeneratedVectorWidget97())
                ]);
              }),
            )
          ]),
    );
  }
}
