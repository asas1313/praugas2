import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praugas2/styles/styles.dart';
import 'package:seo_renderer/helpers/utils.dart';
import 'package:spaces/spaces.dart';
import 'package:url_strategy/url_strategy.dart';

import 'pages/about_page.dart';
import 'pages/clients_page.dart';
import 'pages/contact_page.dart';
import 'pages/home_page.dart';
import 'pages/layout/page_layout.dart';
import 'pages/services_page.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PRAUGAS',
      theme: ThemeData(
        primaryColor: MAIN_THEME_COLOR,
        secondaryHeaderColor: secondaryThemeColor,
        textTheme: textTheme,
      ),
      builder: (context, child) => Spacing(
        dataBuilder: (context) {
          final mediaQuery = MediaQuery.of(context);
          if (mediaQuery.size.width > 500) {
            return SpacingData.generate(30);
          }
          return SpacingData.generate(10);
        },
        child: child ?? SizedBox(),
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
          name: '/contact',
          page: () => PageLayout(child: ContactPage()),
        ),
        GetPage(
          name: '/clients',
          page: () => PageLayout(child: ClientsPage()),
        ),
      ],
      navigatorObservers: <RouteObserver<ModalRoute<void>>>[routeObserver],
    );
  }
}
