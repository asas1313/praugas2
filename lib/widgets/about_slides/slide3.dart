import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praugas2/styles/styles.dart';
import 'package:praugas2/widgets/footer/footer.dart';
import 'package:spaces/spaces.dart';

class Slide3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final spacing = Spacing.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          flex: 2,
          child: Image.asset(
            'assets/img/Business-dreamstime_xxl_66132146_edited.jpg',
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
                  'Business',
                  style: textStyleSubtitle,
                ),
              ),
              Padding(
                padding: spacing.insets.onlyBottom.semiSmall,
                child: Text(
                  '\u2022 Sales development to French speaking countries\n' +
                      '\u2022 Purchasing strategy and process (how to buy better)\n' +
                      '\u2022 ERP deployment and optimization',
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
