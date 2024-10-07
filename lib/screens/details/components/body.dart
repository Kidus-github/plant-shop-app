import 'package:animationtrail/constants.dart';
import 'package:animationtrail/screens/details/components/title_and_price.dart';
import 'package:flutter/material.dart';
import 'bottom_buttons.dart';
import 'image_and_icons.dart';

class Body extends StatelessWidget {
  const Body(
      {super.key,
      required this.img,
      required this.title,
      required this.country,
      required this.price});

  final String img;
  final String title;
  final String country;
  final int price;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(
            size: size,
            img: img,
          ),
          TitleAndPrice(
            title: title,
            country: country,
            price: price,
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          BottomButtons(size: size),
          const SizedBox(
            height: kDefaultPadding * 2,
          )
        ],
      ),
    );
  }
}
