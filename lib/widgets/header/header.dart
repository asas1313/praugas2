import 'package:flutter/material.dart';
import 'package:praugas2/widgets/menu/menu_browsing.dart';
import 'package:praugas2/widgets/menu/menu_contact.dart';

import 'header_desktop.dart';
import 'header_mobile.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
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
          ],
        );
      } else if (constraints.maxWidth > 600) {
        return Column(
          children: [
            MenuContact(),
            HeaderDesktop(),
            MenuBrowsing(),
          ],
        );
      } else {
        return Column(
          children: [
            MenuContact(),
            HeaderMobile(),
          ],
        );
      }
    });
  }
}
