import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praugas2/widgets/header/header_desktop.dart';
import 'package:praugas2/widgets/header/header_mobile.dart';
import 'package:praugas2/widgets/menu/menu_browsing.dart';
import 'package:praugas2/widgets/menu/menu_contact.dart';

class PageLayout extends GetWidget {
  final Widget child;

  PageLayout({required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth > 1000) {
            return Column(
              children: [
                HeaderDesktop(),
                Row(
                  children: [
                    Flexible(
                      flex: 8,
                      child: MenuBrowsing(),
                    ),
                    Flexible(
                      flex: 4,
                      child: MenuContact(),
                    )
                  ],
                ),
                child,
              ],
            );
          } else if (constraints.maxWidth > 600) {
            return Column(
              children: [
                MenuContact(),
                HeaderDesktop(),
                MenuBrowsing(),
                child,
              ],
            );
          } else {
            return Column(
              children: [
                MenuContact(),
                HeaderMobile(),
                child,
              ],
            );
          }
        }),
      ),
    );
  }
}
