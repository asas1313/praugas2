import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praugas2/styles/styles.dart';
import 'package:praugas2/widgets/logo/logo.dart';
import 'package:spaces/spaces.dart';

class Slide1 extends StatelessWidget {
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
              Text(
                'Manufacturing improvements',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
              Padding(
                padding: spacing.insets.onlyBottom.small,
                child: Text(
                  'LEAN practice',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ),
              Text(
                '\u2022 SMED learning by doing - 30% to 90% decrease of equipment change-over time\n' +
                    '\u2022 5S make a better and safer workplace, 1 st results in one day\n' +
                    '\u2022 Workflow with value stream mapping - workshop layout (re)design  Stock improvement data analyses, MRP, kanban)',
                textAlign: TextAlign.left,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 11,
                ),
                maxLines: 5,
              ),
              Text(
                'Process expertise focusing on added value and eliminate hidden waste, bottleneck, ...\n' +
                    'Quality and productivity analysis and solutions\n' +
                    'Continuous improvement deployment (Kaizen, 5 why,…)',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 11,
                ),
                maxLines: 5,
              ),
              Padding(
                padding: spacing.insets.all.normal,
                child: Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tightFor(
                      width: 115,
                      height: 30,
                    ),
                    child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(primary: MAIN_THEME_COLOR),
                        onPressed: () => Get.toNamed('/contact'),
                        child: Text(
                          'Get In Touch',
                        )),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
