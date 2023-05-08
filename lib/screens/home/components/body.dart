// ignore_for_file: prefer_const_constructors

import 'package:first_app/contstants.dart';
import 'package:flutter/material.dart';
import 'featured-plants.dart';
import 'header_with-search-box.dart';
import 'recommends-plants.dart';
import 'title-with-more-button.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        HeaderWithSearchBox(size: size),
        TitleWithMoreBtn(
          title: 'Recomended',
          press: () {},
        ),
        RecommendsPlants(),
        TitleWithMoreBtn(
          title: 'Featured plants',
          press: () {},
        ),
        FeaturedPlants(),
        SizedBox(height: kDefaultPadding)
      ],
    ));
  }
}

