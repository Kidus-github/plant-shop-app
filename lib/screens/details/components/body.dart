import 'package:animationtrail/constants.dart';
import 'package:animationtrail/screens/details/components/title_and_price.dart';
import 'package:flutter/material.dart';
import 'image_and_icons.dart';

class Body extends StatelessWidget {
  const Body(
      {required this.img,
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
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Buy Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Center(
                      child: Text(
                        "Description",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: kDefaultPadding * 2,
          )
        ],
      ),
    );
  }
}
