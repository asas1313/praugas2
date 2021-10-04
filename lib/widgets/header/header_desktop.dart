import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:praugas2/widgets/logo/logo.dart';

class HeaderDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Logo(
          isSloganVisible: true,
          isContactButtonVisible: true,
        ),
      ],
    );
  }
}
