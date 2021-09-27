import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praugas2/styles/styles.dart';
import 'package:spaces/spaces.dart';

class ClientsPage extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: (constraints.maxWidth / 3) * 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Space.big(),
                SelectableText(
                  'Clients',
                  textAlign: TextAlign.center,
                  style: textStyleTitle,
                ),
                Space.big(),
                SelectableText(
                  'ELMORIS',
                  style: textStyleSubtitle,
                  textAlign: TextAlign.start,
                ),
                Space.semiSmall(),
                SelectableText(
                  'LT TEchnologies',
                  style: textStyleSubtitle,
                  textAlign: TextAlign.start,
                ),
                Space.semiSmall(),
                SelectableText(
                  'InMedika Klinika',
                  style: textStyleSubtitle,
                  textAlign: TextAlign.start,
                ),
                Space.big(),
              ],
            ),
          ),
        ),
      );
    });
  }
}
