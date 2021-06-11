import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'menu_item.dart';

class MenuBrowsing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Row(
        children: [
          SizedBox(width: 50),
          MenuItem(
            child: Text('Home'),
            onPressed: () => Get.toNamed('/'),
          ),
          SizedBox(width: 15),
          MenuItem(
            child: Text('About'),
            onPressed: () => Get.toNamed('/about'),
          ),
          SizedBox(width: 15),
          MenuItem(
            child: Text('Services'),
            onPressed: () => Get.toNamed('/services'),
          ),
          SizedBox(width: 15),
          MenuItem(
            child: Text('Projects'),
            onPressed: () => Get.toNamed('/projects'),
          ),
          SizedBox(width: 15),
          MenuItem(
            child: Text('Contact'),
            onPressed: () => Get.toNamed('/contact'),
          ),
          SizedBox(width: 15),
          MenuItem(
            child: Text('Clients'),
            onPressed: () => Get.toNamed('/clients'),
          ),
          SizedBox(width: 15),
          MenuItem(
            child: Text('FAQ'),
            onPressed: () => Get.toNamed('/faq'),
          ),
        ],
      ),
    );
  }
}
