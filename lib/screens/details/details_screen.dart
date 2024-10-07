import 'package:flutter/material.dart';
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen(
      {super.key,
      required this.img,
      required this.name,
      required this.price,
      required this.country});
  final String img;
  final String name;
  final String country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        img: img,
        title: name,
        country: country,
        price: price,
      ),
    );
  }
}
