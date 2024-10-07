import 'package:flutter/material.dart';
import 'package:animationtrail/constants.dart';

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard(
      {super.key,
      required this.size,
      required this.img,
      required this.name,
      required this.origin,
      required this.price,
      required this.onPress});
  final String img;
  final String name;
  final String origin;
  final String price;
  final Function()? onPress;

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5,
        ),
        width: size.width * 0.4,
        child: Column(
          children: [
            Image.asset(
              img,
            ),
            Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: name.toUpperCase(),
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        TextSpan(
                          text: origin.toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    price,
                    style: TextStyle(color: kPrimaryColor),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
