import 'package:flutter/material.dart';
import 'feature_plant_card.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        FeaturePlantCard(
          size: size,
          image: "assets/images/bottom_img_1.png",
          onPressed: () {},
        ),
        FeaturePlantCard(
            size: size,
            image: "assets/images/bottom_img_1.png",
            onPressed: () {}),
      ]),
    );
  }
}
