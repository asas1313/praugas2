import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:praugas2/styles/styles.dart';
import 'package:praugas2/widgets/about_slides/about_slider.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer.dart';
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
                Space.semiBig(),
                TextRenderer(
                    text: AutoSizeText.rich(
                  TextSpan(text: '', style: textStyleNormal, children: [
                    TextSpan(
                      text: 'Background:\n\n',
                      style: textStyleSubtitle2,
                    ),
                    TextSpan(
                      text: 'Engineer & manager, French, located in Vilnius with experience and proven success in:\n' +
                          '1. international project & change management\n' +
                          '2. manufacturing and industrial engineering\n' +
                          '3. LEAN and CIP expertise\n' +
                          '4. ERP solution deployment\n' +
                          '5. indirect purchasing (services, investments, consumables,…)\n' +
                          '6. process standardization\n' +
                          '7. EFQM Excellence Model deployment (Prize winner 2011) efqm.org',
                      style: textStyleNormal,
                    ),
                  ]),
                  textAlign: TextAlign.left,
                )),
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
