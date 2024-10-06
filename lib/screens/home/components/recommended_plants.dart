import 'package:flutter/material.dart';
import 'recommend_plant_card.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            size: size,
            img: "assets/images/image_1.png",
            name: "Samantha\n",
            origin: "Russia",
            price: '\$400',
          ),
          RecommendPlantCard(
            size: size,
            img: "assets/images/image_2.png",
            name: "Samantha\n",
            origin: "Russia",
            price: '\$400',
          ),
          RecommendPlantCard(
            size: size,
            img: "assets/images/image_3.png",
            name: "Samantha\n",
            origin: "Russia",
            price: '\$400',
          ),
        ],
      ),
    );
  }
}
