import 'package:flutter/material.dart';
import 'package:foodrecipes/utils/constants/color_constants.dart';

class popularcategorycard extends StatelessWidget {
  final image;
  final title;
  final duration;
  const popularcategorycard({
    required this.image,
    required this.title,
    required this.duration,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 231,
          width: 150,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 176,
            decoration: BoxDecoration(
                color: ColorConstants.grey1,
                borderRadius: BorderRadius.circular(12)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 65,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorConstants.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 12, right: 15, bottom: 12),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Time",
                            style: TextStyle(
                                color: ColorConstants.lightGrey,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            duration,
                            style: TextStyle(
                                color: ColorConstants.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: ColorConstants.white,
                        child: Icon(
                          Icons.bookmark_outline_rounded,
                          size: 16,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          child: CircleAvatar(
            radius: 55,
            backgroundImage: AssetImage("$image"),
          ),
        )
      ],
    );
  }
}
