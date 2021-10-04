import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praugas2/styles/styles.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';

class HomePage extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitHeight,
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
      ),
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
    return LayoutBuilder(builder: (context, constraints) {
      return Center(
        child: SizedBox(
          width: (constraints.maxWidth / 3) * 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextRenderer(
                text: AutoSizeText(
                  companyDescription,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                  maxLines: 10,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
