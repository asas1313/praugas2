import 'package:flutter/material.dart';
import 'package:praugas2/widgets/menu/menu_browsing.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'header_desktop.dart';
import 'header_mobile.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      if (sizingInformation.isMobile) {
        return Column(
          children: [
            HeaderMobile(),
          ],
        );
      } else {
        return Column(
          children: [
            HeaderDesktop(),
            MenuBrowsing(),
          ],
        );
      }
    });
  }
}
