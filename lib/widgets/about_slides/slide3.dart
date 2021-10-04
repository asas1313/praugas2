import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praugas2/styles/styles.dart';
import 'package:praugas2/widgets/logo/logo.dart';
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
          child: TextButton(
            onPressed: () => Get.toNamed('/'),
            child: Logo(),
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
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ),
              Padding(
                padding: spacing.insets.onlyBottom.semiSmall,
                child: Text(
                  '\u2022 Sales development to French speaking countries\n' +
                      '\u2022 Purchasing strategy and process (how to buy better)\n' +
                      '\u2022 ERP deployment and optimization',
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                  maxLines: 6,
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(
                  width: 115,
                  height: 30,
                ),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: MAIN_THEME_COLOR),
                    onPressed: () => Get.toNamed('/contact'),
                    child: Text(
                      'Get In Touch',
                    )),
              )
            ],
          ),
        ),
      ],
    );
  }
}
