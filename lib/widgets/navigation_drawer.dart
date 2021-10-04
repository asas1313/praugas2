import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spaces/spaces.dart';

import 'menu/menu_item.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final spacing = Spacing.of(context);
    return Container(
      child: Column(
        children: [
          Container(
            color: Color.fromRGBO(0, 0, 0, 0.75),
            padding: spacing.insets.all.big,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                MenuItem(
                  child: Text('Home'),
                  onPressed: () => Get.toNamed('/'),
                ),
                SizedBox(height: 15),
                MenuItem(
                  child: Text('About'),
                  onPressed: () => Get.toNamed('/about'),
                ),
                SizedBox(height: 15),
                MenuItem(
                  child: Text('Services'),
                  onPressed: () => Get.toNamed('/services'),
                ),/*
                SizedBox(height: 15),
                MenuItem(
                  child: Text('Projects'),
                  onPressed: () => Get.toNamed('/projects'),
                ),*/
                SizedBox(height: 15),
                MenuItem(
                  child: Text('Contact'),
                  onPressed: () => Get.toNamed('/contact'),
                ),
                SizedBox(height: 15),
                MenuItem(
                  child: Text('Clients'),
                  onPressed: () => Get.toNamed('/clients'),
                ),/*
                SizedBox(height: 15),
                MenuItem(
                  child: Text('FAQ'),
                  onPressed: () => Get.toNamed('/faq'),
                ),*/
              ],
            ),
          ),
        ],
      ),
    );
  }
}
