import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:symptoms/constant.dart';
import 'package:symptoms/widgets/bottom_nav.dart';

import 'widgets/search_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and width of our device
    return Scaffold(
      bottomNavigationBar: BottonNavBar(),
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                        icon: SvgPicture.asset("assets/icons/menu.svg",
                            height: 16.907440185546875, width: 22),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Text('Symptoms',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: kTextColor,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 38,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Search & Add Your Symptoms',
                        style: TextStyle(
                          color: kTextColor,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        )),
                  ),
                  SearchBar(),
                  Expanded(
                      child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: .85,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: <Widget>[],
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
