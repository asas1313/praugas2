import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praugas2/widgets/footer/footer.dart';
import 'package:praugas2/widgets/header/header.dart';
import 'package:praugas2/widgets/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PageLayout extends GetWidget {
  final Widget child;

  PageLayout({required this.child});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return ResponsiveBuilder(
        builder: (context, sizingInformation) => Scaffold(
          drawer: sizingInformation.isMobile ? NavigationDrawer() : null,
          backgroundColor: Colors.white,
          body: Container(
            width: constraints.maxWidth,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Header(),
                  child,
                  Footer(),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
