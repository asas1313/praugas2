import 'package:flutter/material.dart';
import 'package:praugas2/styles/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkedInButton extends StatelessWidget {
  final String address;
  final double height;
  final bool isColorWhite;

  const LinkedInButton(
      {required this.address, this.height = 14, this.isColorWhite = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () => _openLinkedIn(address),
        child: Image(
            height: height,
            fit: BoxFit.contain,
            image: isColorWhite
                ? AssetImage(linkedinLogoWhiteImg)
                : AssetImage(linkedinLogoImg)),
      ),
    );
  }

  _openLinkedIn(String address) async {
    await canLaunch(address)
        ? await launch(address)
        : throw 'Could not launch LinkedIn profile';
  }
}
