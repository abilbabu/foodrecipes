import 'package:flutter/material.dart';
import 'package:foodrecipes/dummy_db.dart';
import 'package:foodrecipes/utils/constants/color_constants.dart';
import 'package:foodrecipes/view/global_widgets/custom_recipe_cart.dart';
import 'package:foodrecipes/view/global_widgets/custom_video_cart.dart';
import 'package:foodrecipes/view/profile_screen/widget/customprofileScreen.dart';
import 'package:foodrecipes/view/recipedetialscreen/recipedetialscreen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: ColorConstants.white,
        title: Text(
          "My profile",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_horiz,
                size: 30,
              )),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            _buildProfileimagesection(),
            _buildprofiledatasection(),
            Divider(),
            _buildTabBarSection(),
            _buildTabbarViewSection()
          ],
        ),
      ),
    );
  }

  Expanded _buildTabbarViewSection() {
    return Expanded(
              child: TabBarView(children: [
            _buildVideoTab(),
            _buildRecipeTab(),
          ]));
  }

  TabBar _buildTabBarSection() {
    return TabBar(
              padding: EdgeInsets.symmetric(horizontal: 16),
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
              ]);
  }

  Widget _buildRecipeTab() {
    return ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => CustomRecipeCart(
              image: DummyDb.Recipecard[index]["image"],
              title: DummyDb.Recipecard[index]["title"],
              rating: DummyDb.Recipecard[index]["rating"],
              Ingredients: DummyDb.Recipecard[index]["Ingredients"],
            ),
        separatorBuilder: (context, index) => SizedBox(),
        itemCount: DummyDb.Recipecard.length);
  }

  Widget _buildVideoTab() {
    return ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => CustomVideoCard(
              onCardTaped: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Recipedetialscreen(
                        recipetitle: DummyDb.trendingNowList[index]['title'],
                        recipeimage: DummyDb.trendingNowList[index]['imageurl'],
                        recipeprofile: DummyDb.trendingNowList[index]
                            ['profileimage'],
                        recipeusername: DummyDb.trendingNowList[index]
                            ['userName'],
                        raciperating: DummyDb.trendingNowList[index]['rating'],
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
        itemCount: DummyDb.trendingNowList.length);
  }

  Widget _buildprofiledatasection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustompofileScreen(
            name: "Recipe",
            count: "3",
          ),
          CustompofileScreen(
            name: "Video",
            count: "13",
          ),
          CustompofileScreen(
            name: "Followers",
            count: "14k",
          ),
          CustompofileScreen(
            name: "Following",
            count: "120",
          ),
        ],
      ),
    );
  }

  Widget _buildProfileimagesection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/image/shopten.jpeg"),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  border:
                      Border.all(color: ColorConstants.PrimaryColor, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Edit profile",
                    style: TextStyle(
                      color: ColorConstants.PrimaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Alessandra Blair",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Hello world I’m Alessandra Blair, I’m\nfrom Italy 🇮🇹 I love cooking so much!",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: ColorConstants.lightGrey),
          ),
        ],
      ),
    );
  }
}
