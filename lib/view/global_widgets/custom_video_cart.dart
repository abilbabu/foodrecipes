import 'package:flutter/material.dart';
import 'package:foodrecipes/utils/constants/color_constants.dart';

class CustomVideoCard extends StatelessWidget {
  final Map videoData;

  CustomVideoCard({
    super.key,
    required this.videoData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Column(
        children: [
          Container(
            height: 180,
            width: 290,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(videoData["bg"]))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
                              videoData["rating"], //map creation
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
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                          color: ColorConstants.lightbb.withOpacity(.3),
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(
                          videoData["videosize"], //map creation
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
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                videoData["videotitle"], //map creaction
                style: TextStyle(
                    color: ColorConstants.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              Icon(Icons.more_horiz)
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage(videoData["image"]),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                videoData["subtitle"],
                style: TextStyle(
                    color: ColorConstants.lightGrey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ],
      ),
    );
  }
}
