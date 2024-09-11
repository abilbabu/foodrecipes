import 'package:flutter/material.dart';
import 'package:foodrecipes/dummy_db.dart';
import 'package:foodrecipes/utils/constants/color_constants.dart';
import 'package:foodrecipes/view/global_widgets/custom_buttton.dart';
import 'package:foodrecipes/view/global_widgets/custom_container.dart';

class Recipedetialscreen extends StatelessWidget {
  final String recipetitle;
  final String recipeimage;
  final String recipeprofile;
  final String recipeusername;
  final String raciperating;
  const Recipedetialscreen(
      {super.key,
      required this.recipetitle,
      required this.recipeimage,
      required this.recipeprofile,
      required this.recipeusername,
      required this.raciperating});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: ColorConstants.white,
        actions: [
          Icon(
            Icons.more_horiz,
            color: ColorConstants.black,
            size: 25,
          ),
          SizedBox(
            width: 13,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [_buildTitleSection(), _BuildContainerSection()],
          ),
        ),
      ),
    );
  }

  Column _BuildContainerSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
        Row(
          children: [
            Text(
              'Ingredients',
              style: TextStyle(
                color: ColorConstants.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(),
            Row(
              children: [
                Text(
                  DummyDb.incredientdata.length.toString(),
                  style: TextStyle(
                    color: ColorConstants.lightGrey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Item",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: ColorConstants.lightGrey),
                )
              ],
            )
          ],
        ),
        SizedBox(height: 13),
        SizedBox(
          child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => CustomContainerScreen(
                    // haveArrow: true,
                    incredientImage: DummyDb.incredientdata[index]
                        ["incredientImage"],
                    incredientName: DummyDb.incredientdata[index]
                        ["incredientName"],
                    incredientQuantity: DummyDb.incredientdata[index]
                        ["incredientQuantity"],
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 12,
                  ),
              itemCount: DummyDb.incredientdata.length),
        )
      ],
    );
  }

  Widget _buildTitleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          recipetitle,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(recipeimage), fit: BoxFit.cover)),
            child: Center(
              child: CircleAvatar(
                radius: 30,
                backgroundColor: ColorConstants.lightbb.withOpacity(.3),
                child: Icon(
                  Icons.play_arrow,
                  color: ColorConstants.white,
                  size: 35,
                ),
              ),
            )),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 16,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              raciperating,
              style: TextStyle(
                  color: ColorConstants.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "(300 Reviews)",
              style: TextStyle(
                color: ColorConstants.lightGrey,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(recipeprofile),
            ),
            SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  recipeusername,
                  style: TextStyle(
                      color: ColorConstants.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: ColorConstants.PrimaryColor,
                      size: 14,
                    ),
                    Text(
                      'Bali, Indonesia',
                      style: TextStyle(
                        fontSize: 12,
                        color: ColorConstants.lightGrey,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ],
            ),
            Spacer(),
            CustomButton(
              text: "Follow",
              onButtonTap: () {},
            )
          ],
        ),
      ],
    );
  }
}
