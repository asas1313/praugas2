import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:praugas2/styles/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactButton extends StatelessWidget {
  const ContactButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ConstrainedBox(
          constraints: BoxConstraints.tightFor(width: 75, height: 60),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: SECOND_THEME_COLOR,
              shape: CircleBorder(),
            ),
            onPressed: () => _getInTouch(),
            child: AutoSizeText(
              'Contact',
              style: TextStyle(
                color: Colors.white,
                fontFamily: GoogleFonts.lato().fontFamily,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
              maxLines: 1,
            ),
          )),
    );
  }

  void _getInTouch() async {
    final Uri _emailLaunchUri = Uri(
        scheme: 'mailto',
        path: 'hello@praugas.eu',
        queryParameters: {'subject': 'Message from webpage visitor'});
    await canLaunch(_emailLaunchUri.toString())
        ? await launch(_emailLaunchUri.toString())
        : throw 'Could not launch $_emailLaunchUri';
  }
}
