import 'package:flutter/material.dart';
import 'package:praugas2/styles/styles.dart';
import 'package:praugas2/widgets/about_slides/about_slider.dart';
import 'package:spaces/spaces.dart';

class AboutPage extends StatelessWidget {
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
                  companyName.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: textStyleTitle,
                ),
                Space.big(),
                SelectableText(
                  'Active in:',
                  textAlign: TextAlign.center,
                  style: textStyleSubtitle,
                ),
                SelectableText(
                  '\u2022 Manufacturing industry\n' +
                      '\u2022 Food packaging\n' +
                      '\u2022 Health care\n' +
                      '\u2022 Cosmetic industry\n' +
                      '\u2022 Furniture\n',
                  textAlign: TextAlign.left,
                  style: textStyleNormal,
                ),
                Space.normal(),
                SelectableText(
                  'Background:',
                  textAlign: TextAlign.center,
                  style: textStyleSubtitle2,
                ),
                Space.normal(),
                SelectableText(
                  'Engineer & manager, French, located in Vilnius with experience and proven success in:\n' +
                      '1. international project & change management\n' +
                      '2. manufacturing and industrial engineering\n' +
                      '3. LEAN and CIP expertise\n' +
                      '4. ERP solution deployment\n' +
                      '5. indirect purchasing (services, investments, consumables,…)\n' +
                      '6. process standardization\n' +
                      '7. EFQM Excellence Model deployment (Prize winner 2011) efqm.org',
                  textAlign: TextAlign.left,
                  style: textStyleNormal,
                ),
                AboutSlider(),
                Space.big(),
              ],
            ),
          ),
        ),
      );
    });
  }
}
