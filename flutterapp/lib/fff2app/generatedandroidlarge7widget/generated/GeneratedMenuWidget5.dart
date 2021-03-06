import 'package:flutter/material.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge7widget/generated/GeneratedRectangle1Widget5.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge7widget/generated/GeneratedFrame23Widget.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge7widget/generated/GeneratedFrame24Widget.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge7widget/generated/GeneratedFrame22Widget.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge7widget/generated/GeneratedEllipse2Widget8.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge7widget/generated/GeneratedSettingsButtonWidget5.dart';

/* Group Menu
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedMenuWidget5 extends StatelessWidget {
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
              child: GeneratedRectangle1Widget5(),
            ),
            Positioned(
              left: 246.0,
              top: 15.0,
              right: null,
              bottom: null,
              width: 36.0,
              height: 36.0,
              child: GeneratedEllipse2Widget8(),
            ),
            Positioned(
              left: 98.0,
              top: 13.0,
              right: null,
              bottom: null,
              width: 37.0,
              height: 38.0,
              child: GeneratedFrame23Widget(),
            ),
            Positioned(
              left: 25.0,
              top: 17.0,
              right: null,
              bottom: null,
              width: 32.0,
              height: 31.0,
              child: GeneratedFrame22Widget(),
            ),
            Positioned(
              left: 174.0,
              top: 17.0,
              right: null,
              bottom: null,
              width: 34.0,
              height: 31.0,
              child: GeneratedFrame24Widget(),
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
                final double width = constraints.maxWidth * 0.06333333333333334;

                final double height =
                    constraints.maxHeight * 0.24615384615384617;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.8466666666666667,
                      y: constraints.maxHeight * 0.38461538461538464,
                      z: 0,
                      child: Container(
                        width: width,
                        height: height,
                        child: GeneratedSettingsButtonWidget5(),
                      ))
                ]);
              }),
            )
          ]),
    );
  }
}
