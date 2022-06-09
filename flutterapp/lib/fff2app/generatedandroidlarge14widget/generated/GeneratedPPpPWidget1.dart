import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge14widget/generated/GeneratedEllipse2Widget9.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge14widget/generated/GeneratedVectorWidget135.dart';

/* Group pPpP
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedPPpPWidget1 extends StatelessWidget {
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
              child: GeneratedEllipse2Widget9(),
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
                double percentWidth = 0.4;
                double scaleX = (constraints.maxWidth * percentWidth) / 12.0;

                double percentHeight = 0.4666666666666667;
                double scaleY = (constraints.maxHeight * percentHeight) / 14.0;

                return Stack(children: [
                  TransformHelper.translateAndScale(
                      translateX: constraints.maxWidth * 0.3,
                      translateY: constraints.maxHeight * 0.26666666666666666,
                      translateZ: 0,
                      scaleX: scaleX,
                      scaleY: scaleY,
                      scaleZ: 1,
                      child: GeneratedVectorWidget135())
                ]);
              }),
            )
          ]),
    );
  }
}
