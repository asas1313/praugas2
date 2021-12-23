import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praugas2/styles/styles.dart';
import 'package:praugas2/widgets/about_slides/about_slider.dart';
import 'package:spaces/spaces.dart';

class ServicesPage extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: (constraints.maxWidth / 3) * 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Space.normal(),
                SelectableText(
                  'Services I can offer',
                  textAlign: TextAlign.center,
                  style: textStyleTitle,
                ),
                Space.extraSmall(),
                AboutSlider(),
                Space.extraSmall(),
              ],
            ),
          ),
        ),
      );
    });
  }
}
