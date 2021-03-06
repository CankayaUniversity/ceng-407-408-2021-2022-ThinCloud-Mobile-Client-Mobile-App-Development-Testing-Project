import 'package:flutter/material.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge2widget/generated/GeneratedRectangle401Widget.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge2widget/generated/GeneratedSearchWidget1.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge2widget/generated/GeneratedVectorWidget60.dart';

/* Group Search
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedSearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 277.0,
      height: 33.0,
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
              width: 277.0,
              height: 33.0,
              child: GeneratedRectangle401Widget(),
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
                double percentWidth = 0.05415162454873646;
                double scaleX = (constraints.maxWidth * percentWidth) / 15.0;

                double percentHeight = 0.45454545454545453;
                double scaleY = (constraints.maxHeight * percentHeight) / 15.0;

                return Stack(children: [
                  TransformHelper.translateAndScale(
                      translateX: constraints.maxWidth * 0.036101083032490974,
                      translateY: constraints.maxHeight * 0.2662508415453362,
                      translateZ: 0,
                      scaleX: scaleX,
                      scaleY: scaleY,
                      scaleZ: 1,
                      child: GeneratedVectorWidget60())
                ]);
              }),
            ),
            Positioned(
              left: 33.2823486328125,
              top: 6.0,
              right: null,
              bottom: null,
              width: 56.781002044677734,
              height: 26.74802017211914,
              child: GeneratedSearchWidget1(),
            )
          ]),
    );
  }
}
