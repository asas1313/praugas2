import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:praugas2/styles/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        color: footerColor,
      ),
      Container(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Linkify(
              onOpen: (link) async {
                if (await canLaunch(link.url)) {
                  await launch(link.url);
                } else {
                  throw 'Could not launch $link';
                }
              },
              text:
                  '©2021 by Praugas. Proudly created by https://ModernIT.space',
              style: TextStyle(color: Colors.white),
              linkStyle: TextStyle(color: Colors.lightBlue),
            ),
            TextButton(
              onPressed: () => _openLinkedIn(),
              child: Image(
                  height: 14,
                  fit: BoxFit.contain,
                  image: AssetImage('assets/img/linkedin_logo_white.png')),
            ),
          ],
        ),
      )
    ]);
  }

  _openLinkedIn() async {
    await canLaunch(
            'https://www.linkedin.com/company/modernios-informacines-technologijos/')
        ? await launch(
            'https://www.linkedin.com/company/modernios-informacines-technologijos/')
        : throw 'Could not launch LinkedIn profile';
  }
}
