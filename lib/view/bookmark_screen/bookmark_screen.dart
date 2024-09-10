import 'package:flutter/material.dart';
import 'package:foodrecipes/dummy_db.dart';
import 'package:foodrecipes/utils/constants/color_constants.dart';
import 'package:foodrecipes/view/global_widgets/custom_video_cart.dart';
import 'package:foodrecipes/view/recipedetialscreen/recipedetialscreen.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: ColorConstants.white,
          title: Text(
            "Saved recipes",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          bottom: TabBar(
              padding: EdgeInsets.symmetric(horizontal: 20),
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: ColorConstants.white,
              unselectedLabelColor: ColorConstants.PrimaryColor,
              indicator: BoxDecoration(
                  color: ColorConstants.PrimaryColor,
                  borderRadius: BorderRadius.circular(10)),
              tabs: [
                Tab(
                  child: Text("Video"),
                ),
                Tab(
                  child: Text("Recipe"),
                ),
              ]),
        ),
        body: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            scrollDirection: Axis.vertical,
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
                            raciperating: DummyDb.trendingNowList[index]
                                ['rating'],
                          ),
                        ));
                  },
                  width: double.infinity,
                  imageurl: DummyDb.trendingNowList[index]['imageurl'],
                  rating: DummyDb.trendingNowList[index]['rating'],
                  duration: DummyDb.trendingNowList[index]['duration'],
                  title: DummyDb.trendingNowList[index]['title'],
                  profileimage: DummyDb.trendingNowList[index]['profileimage'],
                  userName: DummyDb.trendingNowList[index]['userName'],
                ),
            separatorBuilder: (context, index) => SizedBox(
                  height: 16,
                ),
            itemCount: DummyDb.trendingNowList.length),
      ),
    );
  }
}
