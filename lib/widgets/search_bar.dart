import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:symptoms/constant.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: kIconColor),
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Search Symptoms',
            suffixIcon: Container(
              padding: EdgeInsets.all(0.0),
              width: 80,
              height: 20,
              child: MaterialButton(
                padding: EdgeInsets.all(0.0),
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.grey, style: BorderStyle.solid)),
                child: Text("Check"),
                color: Colors.white,
                textColor: Colors.grey,
                onPressed: () {},
              ),
            ),
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              height: 20.0,
              width: 20.0,
              color: kIconColor,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
