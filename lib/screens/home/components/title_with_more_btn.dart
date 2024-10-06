import 'package:flutter/material.dart';
import 'package:animationtrail/constants.dart';
import 'title_with_custome_underline.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn(
      {super.key, required this.title, required this.onPressed});
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomeUnderline(
            title: title,
          ),
          Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryColor,
            ),
            onPressed: onPressed,
            child: const Text(
              'More',
              style: const TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
