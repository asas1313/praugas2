import 'package:flutter/material.dart';
import 'package:praugas2/styles/styles.dart';

class HeaderMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              constraints: BoxConstraints.loose(Size.fromHeight(70)),
              height: 120,
              child: Icon(Icons.menu),
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
              alignment: Alignment.centerLeft,
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    companyName.toUpperCase(),
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Engineering & More',
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
              alignment: Alignment.centerLeft,
              constraints: BoxConstraints.loose(Size.fromHeight(45)),
              decoration: logo,
              height: 120,
            ),
          ),
        ],
      ),
    );
  }
}
