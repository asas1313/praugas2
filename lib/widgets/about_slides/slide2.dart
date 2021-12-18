import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praugas2/styles/styles.dart';
import 'package:praugas2/widgets/footer/footer.dart';
import 'package:spaces/spaces.dart';

class Slide2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final spacing = Spacing.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          flex: 2,
          child: Image.asset(
            'assets/img/Industrialization-dreamstime_xxl_82826964_edited.jpg',
            fit: BoxFit.fitHeight,
          ),
        ),
        Space.small(),
        Flexible(
          flex: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: spacing.insets.onlyBottom.semiSmall,
                child: Text(
                  'Industrialization and investments',
                  style: textStyleSubtitle,
                ),
              ),
              Padding(
                padding: spacing.insets.onlyBottom.semiSmall,
                child: Text(
                  '\u2022 Master-plan design of new plant or workshop (or adaptation of existing)\n' +
                      '\u2022 Prepare decision investment vs. improvement options\n' +
                      '\u2022 Purchasing and technical specifications\n' +
                      '\u2022 Market tender, negotiation, contracting',
                  textAlign: TextAlign.left,
                  style: textStyleNormal,
                  maxLines: 6,
                ),
              ),
              Padding(
                padding: spacing.insets.all.normal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: ConstrainedBox(
                        constraints: BoxConstraints.tightFor(
                          width: 115,
                          height: 30,
                        ),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: MAIN_THEME_COLOR),
                            onPressed: () => Get.toNamed('/contact'),
                            child: Text(
                              'Get In Touch',
                            )),
                      ),
                    ),
                    LinkedInButton(
                      address: linkedInAddress,
                      height: 28,
                      isColorWhite: false,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
