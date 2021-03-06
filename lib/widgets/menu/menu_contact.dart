import 'package:flutter/material.dart';
import 'package:praugas2/styles/styles.dart';
import 'package:spaces/spaces.dart';
import 'package:url_launcher/url_launcher.dart';

import 'menu_item.dart';

class MenuContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          MenuItem(
            child: Text(contactEmail),
            onPressed: () => _getInTouch(),
          ),
          Space.small(),
          MenuItem(
            child: SelectableText(contactPhone),
          ),
          MenuItem(
            child: TextButton(
              onPressed: () => _openLinkedIn(),
              child: Image(
                  height: 14,
                  fit: BoxFit.contain,
                  image: AssetImage(linkedinLogoImg)),
            ),
          ),
          Space.small(),
        ],
      ),
    );
  }

  _openLinkedIn() async {
    await canLaunch(linkedInAddress)
        ? await launch(linkedInAddress)
        : throw 'Could not launch $linkedInAddress';
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
