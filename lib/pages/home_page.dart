import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praugas2/styles/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';
import 'package:spaces/spaces.dart';

class HomePage extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
              image: AssetImage(
                backgroundImg,
              ),
            ),
          ),
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Stack(
              children: [
                _buildGradient(),
                _buildTitleAndSubtitle(),
              ],
            ),
          ),
        ),
      ],
    );
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

  Widget _buildTitleAndSubtitle() {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      final fontSize = sizingInformation.isMobile
          ? 10.0
          : sizingInformation.isTablet
              ? 18.0
              : 56.0;
      final fontSizeSmall = sizingInformation.isMobile
          ? 8.0
          : sizingInformation.isTablet
              ? 12.0
              : 24.0;
      return Center(
        child: SizedBox(
          width: (sizingInformation.screenSize.width / 3) * 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextRenderer(
                text: Column(
                  children: [
                    Space.big(),
                    AutoSizeText(
                      companyDescription,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: fontSize,
                      ),
                      maxLines: 10,
                      minFontSize: 8,
                    ),
                    Space.small(),
                    AutoSizeText(
                      contactMe,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: fontSizeSmall,
                      ),
                      maxLines: 10,
                      minFontSize: 8,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
