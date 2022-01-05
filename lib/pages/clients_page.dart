import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praugas2/styles/styles.dart';
import 'package:praugas2/widgets/contactCard/contact_card.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:spaces/spaces.dart';

class ClientsPage extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var crossAxisCardCount = sizingInformation.isDesktop ? 2 : 1;
      return LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: (constraints.maxWidth / 3) * 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Space.big(),
                  SelectableText(
                    'Clients',
                    textAlign: TextAlign.center,
                    style: textStyleTitle,
                  ),
                  Space.big(),
                  GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCardCount,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      mainAxisExtent: 320,
                    ),
                    padding: EdgeInsets.all(10),
                    shrinkWrap: true,
                    children: [
                      ContactCard(
                        text: 'Metalwork',
                        image: logoLTTImg,
                        link: "https://www.ltt.lt/",
                      ),
                      ContactCard(
                        text: 'Food packaging',
                        image: logoElmorisImg,
                        link: "https://www.elmoris.lt/",
                      ),
                      ContactCard(
                        text: 'Health care',
                        image: logoInMedicaImg,
                        link: "https://www.inmedica.lt/lt",
                      ),
                      ContactCard(
                        text: 'Cosmetic',
                        image: logoManillaImg,
                        link: "https://manilla.lt/",
                      ),
                    ],
                  ),
                  Space.big(),
                ],
              ),
            ),
          ),
        );
      });
    });
  }
}
