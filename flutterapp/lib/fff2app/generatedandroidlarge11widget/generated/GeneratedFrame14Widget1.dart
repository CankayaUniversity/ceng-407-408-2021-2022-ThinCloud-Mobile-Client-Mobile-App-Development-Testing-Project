import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge11widget/generated/GeneratedStatusButtonWidget7.dart';

/* Frame Frame 14
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedFrame14Widget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 29.0,
      height: 27.0,
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
                final double width = constraints.maxWidth * 0.6896551724137931;

                final double height =
                    constraints.maxHeight * 0.5185185185185185;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.13793103448275862,
                      y: constraints.maxHeight * 0.2222222222222222,
                      z: 0,
                      child: Container(
                        width: width,
                        height: height,
                        child: GeneratedStatusButtonWidget7(),
                      ))
                ]);
              }),
            )
          ]),
    );
  }
}
