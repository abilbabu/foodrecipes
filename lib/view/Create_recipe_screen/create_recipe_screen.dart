import 'package:flutter/material.dart';
import 'package:foodrecipes/utils/constants/color_constants.dart';
import 'package:hugeicons/hugeicons.dart';

class CreateRecipeScreen extends StatelessWidget {
  const CreateRecipeScreen({super.key});

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create recipe",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 12,
            ),
            Stack(
              children: [
                Container(
                  height: 230,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("assets/image/Desserts.jpeg"),
                          fit: BoxFit.cover)),
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
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(13),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: ColorConstants.white,
                      child: HugeIcon(
                        icon: HugeIcons.strokeRoundedEdit02,
                        size: 20,
                        color: ColorConstants.PrimaryColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      BorderSide(color: ColorConstants.PrimaryColor, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      BorderSide(color: ColorConstants.PrimaryColor, width: 2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
