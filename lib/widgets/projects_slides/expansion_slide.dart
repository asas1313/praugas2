import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praugas2/styles/styles.dart';
import 'package:spaces/spaces.dart';

class ExpansionSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final spacing = Spacing.of(context);
    return Container(
      constraints: BoxConstraints.tightFor(height: Get.height / 2),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(analyzingImg),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.grey, BlendMode.darken)),
      ),
      child: Padding(
        padding: spacing.insets.all.normal,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'GLOBAL EXPANSION',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Space.normal(),
            Text(
              'Turning a New Page',
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Space.normal(),
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
            ),
          ],
        ),
      ),
    );
  }
}
