import 'package:flutter/material.dart';
import 'package:foodrecipes/utils/constants/color_constants.dart';
import 'package:foodrecipes/view/Create_recipe_screen/create_recipe_screen.dart';
import 'package:foodrecipes/view/bookmark_screen/bookmark_screen.dart';
import 'package:foodrecipes/view/home_screen/home_screen.dart';

class BottomnavbarScreen extends StatefulWidget {
  const BottomnavbarScreen({super.key});

  @override
  State<BottomnavbarScreen> createState() => _BottomnavbarScreenState();
}

class _BottomnavbarScreenState extends State<BottomnavbarScreen> {
  int selectedTab = 0;
  List screen = [
    HomeScreen(),
    BookmarkScreen(),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.yellow,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
        backgroundColor: ColorConstants.PrimaryColor,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CreateRecipeScreen(),
              ));
        },
        child: Icon(
          Icons.add,
          color: ColorConstants.white,
        ),
      ),
      body: screen[selectedTab],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedTab,
          onTap: (value) {
            selectedTab = value;
            setState(() {});
          },
          selectedItemColor: ColorConstants.PrimaryColor,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outline), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: ""),
          ]),
    );
  }
}
