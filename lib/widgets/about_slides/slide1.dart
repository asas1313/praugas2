import 'package:flutter/material.dart';
import 'package:praugas2/styles/styles.dart';
import 'package:spaces/spaces.dart';

class Slide1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final spacing = Spacing.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          flex: 5,
          child: Image.asset(
            'assets/img/Lean_manufacturing-dreamstime_xxl_214285916_edited.jpg',
            fit: BoxFit.fitWidth,
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
                padding: spacing.insets.onlyBottom.small,
                child: Text(
                  'Manufacturing improvements, LEAN practice',
                  textAlign: TextAlign.left,
                  style: textStyleSubtitleBold,
                ),
              ),
              Text(
                '\u2022 30% to 90% decrease of equipment change-over time\n' +
                    '\u2022 5S make a better and safer workplace\n' +
                    '\u2022 Workflow with value stream mapping - Stock improvement',
                textAlign: TextAlign.left,
                style: textStyleNormal,
                maxLines: 5,
              ),
              Text(
                '\u2022 Process analyses focusing on added value\n' +
                    '\u2022 Quality and productivity solutions\n' +
                    '\u2022 Continuous improvement deployment (Kaizen, 5 why,…)',
                textAlign: TextAlign.left,
                style: textStyleNormal,
                maxLines: 5,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
