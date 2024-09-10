import 'package:flutter/material.dart';
import 'package:foodrecipes/dummy_db.dart';
import 'package:foodrecipes/utils/constants/color_constants.dart';
import 'package:foodrecipes/view/global_widgets/custom_video_cart.dart';
import 'package:foodrecipes/view/home_screen/Widget/popular_category_card.dart';
import 'package:foodrecipes/view/home_screen/Widget/popular_creators.dart';
import 'package:foodrecipes/view/home_screen/Widget/recentrecipe.dart';
import 'package:foodrecipes/view/recipedetialscreen/recipedetialscreen.dart';

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
              //#1 sectaion title
              _trendingSection(),
              //#2 section trending now video card custom
              _popularCategorySection(),
              //#3 section popular category
              _recentrecipeSection(),
              //#4 section recent recipe
              _popularCreatorsSection(),
              //#5 section Popular crestors
            ],
          ),
        ),
      ),
    );
  }

  Widget _popularCreatorsSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 12),
              child: Row(
                children: [
                  Text(
                    "Popular creators",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(
                        color: ColorConstants.PrimaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.arrow_forward,
                    color: ColorConstants.PrimaryColor,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 259,
              child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Popularcreators(
                        image: DummyDb.popularcreatorsList[index]['image'],
                        user: DummyDb.popularcreatorsList[index]['user'],
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 5,
                      ),
                  itemCount: DummyDb.popularcreatorsList.length),
            )
          ],
        ),
      ),
    );
  }

  Widget _recentrecipeSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 13),
      child: SizedBox(
        height: 259,
        width: 375,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 12),
              child: Row(
                children: [
                  Text(
                    "Recent recipe",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(
                        color: ColorConstants.PrimaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.arrow_forward,
                    color: ColorConstants.PrimaryColor,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 191,
              child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => recentrecipe(
                        image: DummyDb.recentRecipeList[index]['image'],
                        title: DummyDb.recentRecipeList[index]['title'],
                        user: DummyDb.recentRecipeList[index]['user'],
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 16,
                      ),
                  itemCount: DummyDb.recentRecipeList.length),
            )
          ],
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
                    onCardTaped: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Recipedetialscreen(
                              recipetitle: DummyDb.trendingNowList[index]
                                  ['title'],
                              recipeimage: DummyDb.trendingNowList[index]
                                  ['imageurl'],
                              recipeprofile: DummyDb.trendingNowList[index]
                                  ['profileimage'],
                              recipeusername: DummyDb.trendingNowList[index]
                                  ['userName'],
                                  raciperating:DummyDb.trendingNowList[index]['rating'], 
                            ),
                          ));
                    },
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
