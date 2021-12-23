import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer.dart';
import 'package:spaces/spaces.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return LayoutBuilder(builder: (context, constraints) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitHeight,
              alignment: Alignment.topCenter,
              image: AssetImage(
                  'assets/img/dreamstime_xxl_121274023-digital-finger-point.jpg'),
            ),
          ),
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Stack(
              children: [
                _buildGradient(),
                _buildTitleAndSubtitle(sizingInformation, constraints),
              ],
            ),
          ),
        );
      });
    });
  }

  Widget _buildGradient() {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.5],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleAndSubtitle(
      SizingInformation sizingInformation, BoxConstraints constraints) {
    final fontSize = sizingInformation.isMobile
        ? 10.0
        : sizingInformation.isTablet
            ? 18.0
            : 56.0;
    final textStyleSubtitle2Loc = TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontSize: fontSize,
    );

    final textStyleNormalLoc = TextStyle(
      color: Colors.white,
      fontSize: fontSize,
    );
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Center(
        child: SizedBox(
          width: (constraints.maxWidth / 3) * 2,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Space.semiBig(),
                TextRenderer(
                    text: AutoSizeText.rich(
                  TextSpan(text: '', style: textStyleNormalLoc, children: [
                    TextSpan(
                      text:
                          'Engineer & manager, French, located in Vilnius with experience and proven success in:\n\n',
                      style: textStyleSubtitle2Loc,
                    ),
                    TextSpan(
                      text: '\n\u2022 international projects & change management\n' +
                          '\u2022 manufacturing and industrial engineering\n' +
                          '\u2022 LEAN and CIP expertise\n' +
                          '\u2022 ERP solutions deployment, optimization\n' +
                          '\u2022 indirect purchasing (services, investments, consumables,…)\n' +
                          '\u2022 Process analysis and improvements\n' +
                          '\u2022 EFQM Excellence Model deployment (Prize winner 2011)',
                      style: textStyleNormalLoc,
                    ),
                  ]),
                  textAlign: TextAlign.left,
                )),
                Space.big(),
              ],
            ),
          ),
        ),
      );
    });
  }
}
