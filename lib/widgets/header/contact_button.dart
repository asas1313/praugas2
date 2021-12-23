import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:praugas2/styles/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../linkedin_button.dart';

class ContactButton extends StatelessWidget {
  const ContactButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ResponsiveBuilder(builder: (context, sizingInformation) {
        return Row(
          children: [
            LinkedInButton(address: linkedInAddress, height: 20),
            ConstrainedBox(
                constraints: BoxConstraints.tightFor(width: 80, height: 60),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: SECOND_THEME_COLOR,
                      shape: CircleBorder(),
                    ),
                    onPressed: () => Get.toNamed('/contact'),
                    child: Text(
                      'Contact',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: GoogleFonts.lato().fontFamily,
                        fontWeight: FontWeight.bold,
                        fontSize: 11.0,
                      ),
                    ))),
          ],
        );
      }),
    );
  }
}
