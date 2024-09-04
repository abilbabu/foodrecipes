import 'package:flutter/material.dart';
import 'package:foodrecipes/utils/constants/color_constants.dart';
import 'package:foodrecipes/utils/constants/image_constants.dart';
import 'package:foodrecipes/view/global_widgets/custom_video_cart.dart';

class HomeScreen extends StatelessWidget {
    final List<Map> videocard = [
    {
      "bg": ImageConstants.Food_one,
      "rating": "4.5",
      "videosize": "10:59",
      "videotitle": "How to make sushi at home",
      "image": "assets/image/shopei.jpeg",
      "subtitle": "By Niki Samantha",
    },
    {
      "bg": ImageConstants.Food_two,
      "rating": "4.7",
      "videosize": "8:30",
      "videotitle": "Easy Pasta Recipe",
      "image": "assets/image/shopten.jpeg",
      "subtitle": "By Chef Antonio"
    },
    {
      "bg": ImageConstants.Food_three,
      "rating": "4.3",
      "videosize": "12:15",
      "videotitle": "Best Homemade Pizza",
      "image": "assets/image/seven.webp",
      "subtitle": "By Maria Rodriguez"
    },
    {
      "bg": ImageConstants.Food_four,
      "rating": "4.8",
      "videosize": "9:45",
      "videotitle": "Quick Salad Ideas",
      "image": "assets/image/nine.jpeg",
      "subtitle": "By Sarah Lee",
    },
    {
      "bg": ImageConstants.Food_five,
      "rating": "4.6",
      "videosize": "7:20",
      "videotitle": "Vegan Desserts",
      "image": "assets/image/four.webp",
      "subtitle": "By David Kim"
    },
    {
      "bg": ImageConstants.Food_Six,
      "rating": "4.9",
      "videosize": "15:00",
      "videotitle": "Perfect BBQ Chicken",
      "image": "assets/image/bad.jpeg",
      "subtitle": "By Arjun Sing"
    }
  ];


 HomeScreen({super.key, });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            _buildtitleSection(),
            //title
            _trendingSection(),
            // video card custom
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Popular category",
                    style: TextStyle(
                        color: ColorConstants.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _trendingSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
          child: Row(
            children: [
              Text(
                "Trending now 🔥",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                "See All",
                style: TextStyle(
                    color: ColorConstants.PrimaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w800),
              ),
              Icon(
                Icons.arrow_forward,
                color: ColorConstants.PrimaryColor,
                size: 15,
              )
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 254,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
                  CustomVideoCard(videoData :videocard[index]), //video card
              separatorBuilder: (context, index) => SizedBox(
                    width: 16,
                  ),
              itemCount: videocard.length),
        )
      ],
    );
  }

  Widget _buildtitleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Text(
            "Find best recipes\nfor cooking",
            style: TextStyle(
                fontSize: 26,
                color: ColorConstants.black,
                fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          child: TextField(
            decoration: InputDecoration(
                hintText: " Search recipes",
                hintStyle: TextStyle(
                    color: ColorConstants.lightGrey,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: ColorConstants.lightGrey),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: ColorConstants.lightGrey),
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: ColorConstants.lightGrey,
                )),
          ),
        )
      ],
    );
  }
}
