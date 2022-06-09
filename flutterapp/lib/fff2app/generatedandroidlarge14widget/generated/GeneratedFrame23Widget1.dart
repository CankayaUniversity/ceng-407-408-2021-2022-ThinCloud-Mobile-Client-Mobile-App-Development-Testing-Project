import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge14widget/generated/GeneratedFileManagerButtonWidget6.dart';

/* Frame Frame 23
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedFrame23Widget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 37.0,
      height: 38.0,
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
                final double width = constraints.maxWidth * 0.5405405405405406;

                final double height =
                    constraints.maxHeight * 0.47368421052631576;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.21621621621621623,
                      y: constraints.maxHeight * 0.2894736842105263,
                      z: 0,
                      child: Container(
                        width: width,
                        height: height,
                        child: GeneratedFileManagerButtonWidget6(),
                      ))
                ]);
              }),
            )
          ]),
    );
  }
}
