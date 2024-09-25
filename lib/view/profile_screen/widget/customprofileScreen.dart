import 'package:flutter/material.dart';
import 'package:foodrecipes/utils/constants/color_constants.dart';

class CustompofileScreen extends StatelessWidget {
  const CustompofileScreen({
    super.key, required this.name, required this.count,
  });
final String name;
final String count;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: TextStyle(
            color: ColorConstants.lightGrey,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          count,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: ColorConstants.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
