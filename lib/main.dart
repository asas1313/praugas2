import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praugas2/styles/styles.dart';
import 'package:url_strategy/url_strategy.dart';

import 'pages/about_page.dart';
import 'pages/clients_page.dart';
import 'pages/contact_page.dart';
import 'pages/faq_page.dart';
import 'pages/home_page.dart';
import 'pages/layout/page_layout.dart';
import 'pages/projects_page.dart';
import 'pages/services_page.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: MAIN_THEME_COLOR,
        secondaryHeaderColor: secondaryThemeColor,
        textTheme: textTheme,
      ),
      home: PageLayout(child: HomePage()),
      getPages: [
        GetPage(
          name: '/',
          page: () => PageLayout(child: HomePage()),
        ),
        GetPage(
          name: '/about',
          page: () => PageLayout(child: AboutPage()),
        ),
        GetPage(
          name: '/services',
          page: () => PageLayout(child: ServicesPage()),
        ),
        GetPage(
          name: '/projects',
          page: () => PageLayout(child: ProjectsPage()),
        ),
        GetPage(
          name: '/contact',
          page: () => PageLayout(child: ContactPage()),
        ),
        GetPage(
          name: '/clients',
          page: () => PageLayout(child: ClientsPage()),
        ),
        GetPage(
          name: '/faq',
          page: () => PageLayout(child: FaqPage()),
        ),
      ],
    );
  }
}