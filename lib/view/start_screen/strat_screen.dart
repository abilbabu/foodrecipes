import 'package:flutter/material.dart';
import 'package:foodrecipes/utils/constants/color_constants.dart';
import 'package:foodrecipes/utils/constants/image_constants.dart';
import 'package:foodrecipes/view/bottomnavbarscreen/bottomnavbar_screen.dart';

class StratScreen extends StatefulWidget {
  const StratScreen({super.key});

  @override
  State<StratScreen> createState() => _StratScreenState();
}

class _StratScreenState extends State<StratScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            _buildBackgroundImage(),
            _buildGradientSections(),
            _buildHeader()
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Positioned(
            top: 13,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: ColorConstants.white,
                ),
                SizedBox(
                  width: 10,
                ),
                // Text(
                //   " 60k+ Premium recipes",
                //   style: TextStyle(color: ColorConstants.white),
                // )
                RichText(
                    text: TextSpan(
                        text: "60k+ ",
                        style: TextStyle(
                            color: ColorConstants.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        children: [
                      TextSpan(
                          text: " Premium recipes",
                          style: TextStyle(
                              color: ColorConstants.white,
                              fontSize: 15,
                              fontWeight: FontWeight.normal))
                    ]))
              ],
            ),
          );
  }

  Widget _buildGradientSections() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 64),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.transparent, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Let's Cooking",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: ColorConstants.white,
                    fontSize: 56,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Find best recipes for cooking",
                style: TextStyle(
                    color: ColorConstants.white,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomnavbarScreen(),
                      ));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  decoration: BoxDecoration(
                      color: ColorConstants.PrimaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Start Cooking",
                        style: TextStyle(
                            fontSize: 15, color: ColorConstants.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: ColorConstants.white,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBackgroundImage() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ImageConstants.START_SCREEN_BG),
              fit: BoxFit.cover)),
    );
  }
}
