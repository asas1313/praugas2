import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spaces/spaces.dart';

import 'menu_item.dart';

class MenuBrowsing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Row(
        children: [
          Space.normal(),
          MenuItem(
            child: Text('Home'),
            onPressed: () => Get.toNamed('/'),
          ),
          Space.small(),
          MenuItem(
            child: Text('About'),
            onPressed: () => Get.toNamed('/about'),
          ),
          Space.small(),
          MenuItem(
            child: Text('Services'),
            onPressed: () => Get.toNamed('/services'),
          ),
          Space.small(),
          /*
          MenuItem(
            child: Text('Projects'),
            onPressed: () => Get.toNamed('/projects'),
          ),
          Space.small(),*/
          MenuItem(
            child: Text('Contact'),
            onPressed: () => Get.toNamed('/contact'),
          ),
          Space.small(),
          MenuItem(
            child: Text('Clients'),
            onPressed: () => Get.toNamed('/clients'),
          ),
/*          Space.small(),
          MenuItem(
            child: Text('FAQ'),
            onPressed: () => Get.toNamed('/faq'),
          ),*/
        ],
      ),
    );
  }
}
