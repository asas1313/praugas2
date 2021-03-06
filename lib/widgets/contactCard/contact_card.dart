import 'package:flutter/material.dart';
import 'package:praugas2/styles/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactCard extends StatelessWidget {
  final String text;
  final String image;
  final String link;

  const ContactCard(
      {required this.text, required this.image, required this.link});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Card(
          elevation: 8,
          shadowColor: MAIN_THEME_COLOR,
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white)),
          margin: EdgeInsets.all(20),
          child: GestureDetector(
            onTap: () => openLink(link),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(''),
                  Image.asset(image),
                  Text(
                    text,
                    style: textStyleSubtitle,
                    textAlign: TextAlign.center,
                  ),
                ]),
          ),
        ),
      ),
    );
  }

  Future<void> openLink(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
