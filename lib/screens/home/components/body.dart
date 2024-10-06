import 'package:animationtrail/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'header_with_searchbox.dart';
import 'recommended_plants.dart';
import 'title_with_more_btn.dart';

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
          Container(
            margin: EdgeInsets.only(
              left: kDefaultPadding,
              top: kDefaultPadding / 2,
              bottom: kDefaultPadding / 2,
            ),
            width: size.width * 0.8,
            height: 185,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage("assets/images/bottom_img_1.png"))),
          )
        ],
      ),
    );
  }
}
