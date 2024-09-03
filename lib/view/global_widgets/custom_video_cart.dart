import 'package:flutter/material.dart';
import 'package:foodrecipes/utils/constants/color_constants.dart';
import 'package:foodrecipes/utils/constants/image_constants.dart';

class CustomVideoCard extends StatelessWidget {
  const CustomVideoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        height: 180,
        width: 290,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(ImageConstants.Food_one))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: ColorConstants.lightbb.withOpacity(.3)),
                    height: 50,
                    width: 50,
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: ColorConstants.white,
                          size: 14,
                        ),
                        Text(
                          "4.5",
                          style: TextStyle(
                              color: ColorConstants.white, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundColor: ColorConstants.white,
                    child: Icon(
                      Icons.bookmark_border,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: ColorConstants.lightbb.withOpacity(.3),
                child: Icon(
                  Icons.play_arrow,
                  color: ColorConstants.white,
                  size: 35,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: ColorConstants.lightbb.withOpacity(.3),
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                      "15:00",
                      style: TextStyle(
                          color: ColorConstants.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
