import 'package:flutter/material.dart';
import 'package:foodrecipes/utils/constants/color_constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.onButtonTap,
    required this.text,
    super.key,
    this.height,
    this.width,
    this.fontSize,
  });
  final String text;
  final double? height;
  final double? width;
  final double? fontSize;
  final void Function()? onButtonTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onButtonTap,
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: ColorConstants.white,
                fontSize: fontSize ?? 14,
                fontWeight: FontWeight.w600),
          ),
        ),
        decoration: BoxDecoration(
            color: ColorConstants.PrimaryColor,
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
