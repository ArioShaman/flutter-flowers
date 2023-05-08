import 'package:flutter/material.dart';
import 'package:first_app/contstants.dart';
import 'dart:developer';

import '../../details/details_screen.dart';

class PlantCard extends StatelessWidget {
  const PlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press

  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: () => press(),
            child:  Container(
              margin: const EdgeInsets.only(
                left: kDefaultPadding - 15,
                right: kDefaultPadding - 15,
                top: kDefaultPadding - 20,
                bottom: kDefaultPadding * 2.5,
              ),
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23))
                ]),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(
                    children: [
                      TextSpan(
                          text: '$title\n'.toUpperCase(),
                          style: Theme.of(context).textTheme.labelLarge),
                      TextSpan(
                          text: country.toUpperCase(),
                          style: TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                    ],
                  )),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}
