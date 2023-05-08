import 'package:flutter/material.dart';

import 'featured-plant-card.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantCard(
            image: 'assets/images/bottom_img_1.png',
            press: () {},
          ),
          FeaturedPlantCard(
            image: 'assets/images/bottom_img_2.png',
            press: () {},
          ),
        ],
      )
    );
  }
}