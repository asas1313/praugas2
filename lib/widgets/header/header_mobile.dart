import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praugas2/widgets/logo/logo.dart';

class HeaderMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              constraints: BoxConstraints.loose(Size.fromHeight(80)),
              height: 80,
              child: IconButton(
                icon: Icon(
                  Icons.menu,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: TextButton(
              onPressed: () => Get.toNamed('/'),
              child: Logo(),
            ),
          ),
        ],
      ),
    );
  }
}
