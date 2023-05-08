import 'dart:developer';

import 'package:first_app/contstants.dart';
import 'package:first_app/screens/details/components/body.dart';
import 'package:flutter/material.dart';
import '../../details/details_screen.dart';
import 'plant-cart.dart';

class RecommendsPlants extends StatelessWidget {
  const RecommendsPlants({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kDefaultPadding - 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            PlantCard(
              image: 'assets/images/image_1.png',
              title: 'Samantha',
              country: 'Russia',
              price: 330,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailsScreen()
                  ),
                );
              },
            ),
            PlantCard(
              image: 'assets/images/image_2.png',
              title: 'Samantha',
              country: 'Russia',
              price: 330,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailsScreen()
                  ),
                );
              },
            ),
            PlantCard(
              image: 'assets/images/image_3.png',
              title: 'Samantha',
              country: 'Russia',
              price: 330,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailsScreen()
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
