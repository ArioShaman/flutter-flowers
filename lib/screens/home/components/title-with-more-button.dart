import 'package:flutter/material.dart';
import 'package:first_app/contstants.dart';

import 'title_with_custom_underline.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Row(
          children: [
            TitleWithCustomUnderline(text: title),
            Spacer(),
            TextButton(
              onPressed: () => press,
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: kPrimaryColor,
              ),
              child: Text('more', style: TextStyle(color: Colors.white)),
            )
          ],
        ));
  }
}