

import 'package:first_app/contstants.dart';
import 'package:flutter/material.dart';

import 'image-and-cards.dart';
import 'title-and-price.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          const ImageAndIcons(),
          const TitleAndPrice(
            title: 'Angelica',
            price: 330,
            country: 'Russia',
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20)
                      ),
                    ),
                    backgroundColor: kPrimaryColor,
                  ),
                  child: const Text(
                    'Buy now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Description',
                  ),
                ),
              )
            ],
          ),
        ],
      )
    );
  }
}
