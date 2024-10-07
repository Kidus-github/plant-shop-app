import 'package:animationtrail/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'header_with_searchbox.dart';
import 'recommended_plants.dart';
import 'title_with_more_btn.dart';
import 'featured_plants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: 'Recommended',
            onPressed: () {},
          ),
          RecommendedPlants(size: size),
          TitleWithMoreBtn(
            title: 'Featured Plants',
            onPressed: () {},
          ),
          FeaturedPlants(size: size),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
