import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praugas2/widgets/footer/footer.dart';
import 'package:praugas2/widgets/header/header.dart';

class PageLayout extends GetWidget {
  final Widget child;

  PageLayout({required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            child,
            Footer(),
          ],
        ),
      ),
    );
  }
}
