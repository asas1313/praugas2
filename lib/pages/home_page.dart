import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praugas2/pages/contact_page.dart';
import 'package:praugas2/styles/styles.dart';
import 'package:spaces/spaces.dart';

class HomePage extends GetWidget {
  @override
  Widget build(BuildContext context) {
    final spacing = Spacing.of(context);
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
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Space.normal(),
                Flexible(
                  flex: 9,
                  child: Text(
                    'Consultancy services',
                    style: TextStyle(
                      color: MAIN_THEME_COLOR,
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                SizedBox(width: 25),
                Flexible(
                  flex: 3,
                  child: TextButton(
                    onPressed: () => Get.toNamed('/'),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: spacing.insets.onlyLeft.semiBig,
                      constraints: BoxConstraints.loose(Size.fromHeight(70)),
                      decoration: logo,
                      height: 120,
                    ),
                  ),
                )
              ],
            ),
          ),
          ContactPage(),
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
              Text(
                companyDescription,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
                maxLines: 10,
              ),
            ],
          ),
        ),
      );
    });
  }
}
