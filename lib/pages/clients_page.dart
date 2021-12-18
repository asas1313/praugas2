import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praugas2/styles/styles.dart';
import 'package:spaces/spaces.dart';
import 'package:url_launcher/url_launcher.dart';

class ClientsPage extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: (constraints.maxWidth / 3) * 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Space.big(),
                SelectableText(
                  'Clients',
                  textAlign: TextAlign.center,
                  style: textStyleTitle,
                ),
                Space.big(),
                Row(
                  children: [
                    TextButton(
                      onPressed: () async {
                        var url = "https://www.ltt.lt/";
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Text(
                        'LT Technologies',
                        style: textStyleSubtitleLink,
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SelectableText(
                      'Metalwork',
                      style: textStyleSubtitle,
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                Space.semiSmall(),
                Row(
                  children: [
                    TextButton(
                      onPressed: () async {
                        var url = "https://www.elmoris.lt/";
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Text(
                        'Elmoris',
                        style: textStyleSubtitleLink,
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SelectableText(
                      'Food packaging',
                      style: textStyleSubtitle,
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                Space.semiSmall(),
                Row(
                  children: [
                    TextButton(
                      onPressed: () async {
                        var url = "https://www.inmedica.lt/lt";
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Text(
                        'InMedica Clinic',
                        style: textStyleSubtitleLink,
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SelectableText(
                      'Health care',
                      style: textStyleSubtitle,
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                Space.semiSmall(),
                Row(
                  children: [
                    TextButton(
                      onPressed: () async {
                        var url = "https://manilla.lt/";
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Text(
                        'Manilla',
                        style: textStyleSubtitleLink,
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SelectableText(
                      'Cosmetic',
                      style: textStyleSubtitle,
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                Space.big(),
              ],
            ),
          ),
        ),
      );
    });
  }
}
