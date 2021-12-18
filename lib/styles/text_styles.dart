import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

final textTheme = GoogleFonts.ralewayTextTheme(Get.textTheme);

final companyName = 'Praugas';
final companySlogan = 'Engineering & More';
final companyDescription =
    'Praugas is a Lithuanian based Consulting Firm that has been delivering solutions to clients since 2020. Praugas offers professional consulting services customizable for your business.\n\n' +
        'With know-how in engineering, LEAN, CIP, manufacturing, purchasing ERP, international project management and EFQM excellence model. Praugas supports your growth and development.\n\n' +
        'Contact me to discuss about your wish - 45mn free of charge.';
final companyAddress = 'Gervuogių g. 16-18, LT-10103 Vilnius';
final contactEmail = 'f.pauma@praugas.eu';
final linkedInAddress = 'http://www.linkedin.com/company/praugas';
final contactPhone = '+370 674 58650';

final buildInformation =
    '©2021 by Praugas. Proudly created by https://ModernIT.space';

final textStyleTitle = const TextStyle(
  color: MAIN_THEME_COLOR,
  fontSize: 40,
  fontWeight: FontWeight.w900,
);

final textStyleSubtitle = const TextStyle(
  color: Colors.black,
  fontSize: 16,
);

final textStyleSubtitleBold = const TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.black,
  fontSize: 16,
);

final textStyleSubtitleLink = const TextStyle(
  fontWeight: FontWeight.bold,
  decoration: TextDecoration.underline,
  color: Colors.blue,
  fontSize: 16,
);

final textStyleSubtitle2 = const TextStyle(
  decoration: TextDecoration.underline,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  fontSize: 16,
);

final textStyleNormal = const TextStyle(
  color: Colors.black,
  fontSize: 14,
);

final textStyleNormalSmall = const TextStyle(
  color: Colors.black,
  fontSize: 12,
);

final textStyleBold = const TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.black,
  fontSize: 14,
);
