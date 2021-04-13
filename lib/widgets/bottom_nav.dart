import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant.dart';

class BottonNavBar extends StatelessWidget {
  const BottonNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 10,
      ),
      height: 74,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            svgSrc: 'assets/icons/home.svg',
            title: 'Home',
          ),
          BottomNavItem(
            svgSrc: 'assets/icons/syring.svg',
            title: 'Symptoms',
            isActive: true,
          ),
          BottomNavItem(
            svgSrc: 'assets/icons/medi.svg',
            title: 'Medication',
          ),
          BottomNavItem(
            svgSrc: 'assets/icons/reports.svg',
            title: 'Reports',
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Function press;
  final bool isActive;
  const BottomNavItem({
    Key key,
    this.svgSrc,
    this.title,
    this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SvgPicture.asset(
              svgSrc,
              height: 30,
              width: 40,
              color: isActive ? kActiveIconColor : kTextColor,
            ),
            Text(
              title,
              style: TextStyle(color: isActive ? kActiveIconColor : kIconColor, fontWeight: FontWeight.w500, fontSize: 10, fontStyle: FontStyle.normal),
            ),
          ]),
    );
  }
}
