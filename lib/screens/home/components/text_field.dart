import 'package:flutter/material.dart';
import 'package:animationtrail/constants.dart';

class TextFields extends StatefulWidget {
  const TextFields({super.key});

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  final myController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: myController,
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: TextStyle(
          color: kPrimaryColor.withOpacity(0.5),
        ),
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
      ),
    );
  }
}
