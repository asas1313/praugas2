import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praugas2/styles/colors.dart';
import 'package:praugas2/styles/styles.dart';
import 'package:praugas2/widgets/contactus_form/contactus_form.dart';
import 'package:spaces/spaces.dart';

class ContactPage extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Space.semiBig(),
                Text(
                  'CONTACT US',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: MAIN_THEME_COLOR,
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Space.normal(),
                AutoSizeText(
                  '$companyAddress\n\n' +
                      '$contactEmail\n\n' +
                      '$contactPhone\n\n',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  maxLines: 7,
                  overflowReplacement: Text('Sorry text is too long'),
                ),
              ],
            ),
            ContactUsForm(),
          ],
        ),
      );
    });
  }
}
