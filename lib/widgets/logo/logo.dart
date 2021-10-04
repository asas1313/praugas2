import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:praugas2/styles/styles.dart';
import 'package:praugas2/widgets/header/contact_button.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer.dart';

class Logo extends StatelessWidget {
  final bool isSloganVisible;
  final bool isContactButtonVisible;

  const Logo({
    this.isSloganVisible = false,
    this.isContactButtonVisible = false,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Stack(
        children: [
          Container(
            width: sizingInformation.screenSize.width,
            height: 80,
            decoration: BoxDecoration(
                color: MAIN_THEME_COLOR,
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(40.0))),
          ),
          Container(
            color: MAIN_THEME_COLOR,
            width: 40,
            height: 80,
            child: CustomPaint(
              painter: TrianglePainter(),
            ),
          ),
          Positioned(
            left: 40,
            child: Container(
              alignment: Alignment.centerLeft,
              height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextRenderer(
                    text: Text(
                      companyName.toUpperCase(),
                      style: TextStyle(
                        fontFamily: GoogleFonts.lato().fontFamily,
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Container(
                    height: 1,
                    width: 180,
                    color: SECOND_THEME_COLOR,
                  ),
                  TextRenderer(
                    text: Text(
                      companySlogan,
                      style: TextStyle(
                        fontFamily: GoogleFonts.lato().fontFamily,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: isSloganVisible,
            child: Positioned(
              left: sizingInformation.screenSize.width / 2 - 75,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 10,
                  ),
                  TextRenderer(
                    text: Text(
                      'Consultancy',
                      style: TextStyle(
                        fontFamily: GoogleFonts.lato().fontFamily,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  TextRenderer(
                    text: Text(
                      'Advice and execution',
                      style: TextStyle(
                        fontFamily: GoogleFonts.lato().fontFamily,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: isContactButtonVisible,
            child: PositionedDirectional(
              end: 10,
              top: 10,
              child: ContactButton(),
            ),
          )
        ],
      );
    });
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = FOOTER_COLOR
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.close();

    canvas.drawPath(path, paint);

    final paint2 = Paint()
      ..color = SECOND_THEME_COLOR
      ..style = PaintingStyle.fill;

    final path2 = Path();
    path2.moveTo(0, 0);
    path2.lineTo(0, size.height);
    path2.lineTo(size.width - 10, size.height);
    path2.close();

    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
