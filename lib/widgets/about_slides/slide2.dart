import 'package:flutter/material.dart';
import 'package:praugas2/styles/styles.dart';
import 'package:spaces/spaces.dart';

class Slide2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final spacing = Spacing.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          flex: 5,
          child: Image.asset(
            'assets/img/Industrialization-dreamstime_xxl_82826964_edited.jpg',
            fit: BoxFit.fitHeight,
          ),
        ),
        Space.small(),
        Flexible(
          flex: 3,
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
            ],
          ),
        ),
      ],
    );
  }
}
