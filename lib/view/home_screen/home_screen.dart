import 'package:flutter/material.dart';
import 'package:foodrecipes/dummy_db.dart';
import 'package:foodrecipes/utils/constants/color_constants.dart';
import 'package:foodrecipes/view/global_widgets/custom_video_cart.dart';
import 'package:foodrecipes/view/home_screen/Widget/popular_category_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildtitleSection(),
              //title
              _trendingSection(),
              // video card custom
              _popularCategorySection()
              //section#3 popular category
            ],
          ),
        ),
      ),
    );
  }

  Widget _popularCategorySection() {
    return DefaultTabController(
      length: 5,
      initialIndex: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "popular category",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TabBar(
                padding: EdgeInsets.symmetric(horizontal: 20),
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: ColorConstants.white,
                unselectedLabelColor: ColorConstants.PrimaryColor,
                dividerHeight: 0,
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                indicator: BoxDecoration(
                    color: ColorConstants.PrimaryColor,
                    borderRadius: BorderRadius.circular(10)),
                tabs: [
                  Tab(
                    child: Text("Salad"),
                  ),
                  Tab(
                    child: Text("Breakfast"),
                  ),
                  Tab(
                    child: Text("Apetizer"),
                  ),
                  Tab(
                    child: Text("noodle"),
                  ),
                  Tab(
                    child: Text("Lunch"),
                  ),
                ]),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 233,
              child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => popularcategorycard(
                        image: DummyDb.popularCategoryList[index]['image'],
                        title: DummyDb.popularCategoryList[index]['title'],
                        duration: DummyDb.popularCategoryList[index]
                            ['duration'],
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 16,
                      ),
                  itemCount: DummyDb.popularCategoryList.length),
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
              itemBuilder: (context, index) => CustomVideoCard(
                    imageurl: DummyDb.trendingNowList[index]['imageurl'],
                    rating: DummyDb.trendingNowList[index]['rating'],
                    duration: DummyDb.trendingNowList[index]['duration'],
                    title: DummyDb.trendingNowList[index]['title'],
                    profileimage: DummyDb.trendingNowList[index]
                        ['profileimage'],
                    userName: DummyDb.trendingNowList[index]['userName'],
                  ), //video card
              separatorBuilder: (context, index) => SizedBox(
                    width: 16,
                  ),
              itemCount: DummyDb.trendingNowList.length),
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
