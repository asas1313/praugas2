import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:praugas2/styles/colors.dart';
import 'package:praugas2/styles/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          color: MAIN_THEME_COLOR,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CompanyInfo(),
              Padding(
                padding: const EdgeInsets.only(right: 80.0),
                child: LinkedInButton(address: linkedInAddress, height: 34),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: LinkedInButton(
                    address:
                        'https://www.linkedin.com/company/modernios-informacines-technologijos/'),
              ),
            ],
          ),
        )
      ]);
    });
  }
}

class GetInTouch extends StatelessWidget {
  const GetInTouch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SizedBox(
            height: 60,
            width: 150,
            child: ElevatedButton(
              onPressed: () => _getInTouch(),
              child: Text('Get In Touch'),
            )));
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

class CompanyInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            SelectableText(
              companyName,
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 30),
            SelectableText(
              companyAddress,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            SelectableText(
              contactPhone,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class LinkedInButton extends StatelessWidget {
  final String address;
  final double height;

  const LinkedInButton({required this.address, this.height = 14});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () => _openLinkedIn(address),
        child: Image(
            height: height,
            fit: BoxFit.contain,
            image: AssetImage(linkedinLogoImg)),
      ),
    );
  }

  _openLinkedIn(String address) async {
    await canLaunch(address)
        ? await launch(address)
        : throw 'Could not launch LinkedIn profile';
  }
}
