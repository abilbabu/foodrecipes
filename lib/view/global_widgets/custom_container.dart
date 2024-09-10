import 'package:flutter/material.dart';
import 'package:foodrecipes/utils/constants/color_constants.dart';

class CustomContainerScreen extends StatelessWidget {
  const CustomContainerScreen({
    required this.incredientQuantity,
    required this.incredientName,
    required this.incredientImage,
    super.key,
  });
final String incredientName;
final String incredientImage;
final String incredientQuantity;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 76,
      decoration: BoxDecoration(
        color: ColorConstants.grey1,
        borderRadius: BorderRadius.circular(12),
                   ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Row(
          children: [
            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(incredientImage),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              incredientName,
              style: TextStyle(
                color: ColorConstants.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(),
            Text(
              incredientQuantity,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: ColorConstants.lightGrey,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
