import 'package:flutter/material.dart';
import 'package:flutterapp/fff2app/generatedandroidlarge10widget/generated/GeneratedFileManagerButtonWidget.dart';
import 'package:flutterapp/helpers/transform/transform.dart';

/* Frame Frame 13
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedFrame13Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.pushNamed(context, '/GeneratedAndroidLarge2Widget'),
      child: Container(
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
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  final double width =
                      constraints.maxWidth * 0.6896551724137931;

                  final double height =
                      constraints.maxHeight * 0.6666666666666666;

                  return Stack(children: [
                    TransformHelper.translate(
                        x: constraints.maxWidth * 0.13793103448275862,
                        y: constraints.maxHeight * 0.14814814814814814,
                        z: 0,
                        child: Container(
                          width: width,
                          height: height,
                          child: GeneratedFileManagerButtonWidget(),
                        ))
                  ]);
                }),
              )
            ]),
      ),
    );
  }
}