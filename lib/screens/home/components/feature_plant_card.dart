import 'package:flutter/material.dart';
import 'package:animationtrail/constants.dart';

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard(
      {super.key,
      required this.size,
      required this.onPressed,
      required this.image});

  final Size size;
  final String image;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
