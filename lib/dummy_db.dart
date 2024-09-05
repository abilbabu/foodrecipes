import 'package:foodrecipes/utils/constants/image_constants.dart';

class DummyDb {
  static List trendingNowList = [
    {
      "imageurl": ImageConstants.Food_one,
      "rating": "4.5",
      "duration": "10:59",
      "title": "How to make sushi at home",
      "profileimage": "assets/image/shopei.jpeg",
      "userName": "By Niki Samantha",
    },
    {
      "imageurl": ImageConstants.Food_two,
      "rating": "4.7",
      "duration": "8:30",
      "title": "Easy Pasta Recipe",
      "profileimage": "assets/image/shopten.jpeg",
      "userName": "By Chef Antonio"
    },
    {
      "imageurl": ImageConstants.Food_three,
      "rating": "4.3",
      "duration": "12:15",
      "title": "Best Homemade Pizza",
      "profileimage": "assets/image/seven.webp",
      "userName": "By Maria Rodriguez"
    },
    {
      "imageurl": ImageConstants.Food_four,
      "rating": "4.8",
      "duration": "9:45",
      "title": "Quick Salad Ideas",
      "profileimage": "assets/image/nine.jpeg",
      "userName": "By Sarah Lee",
    },
    {
      "imageurl": ImageConstants.Food_five,
      "rating": "4.6",
      "duration": "7:20",
      "title": "Vegan Desserts",
      "profileimage": "assets/image/four.webp",
      "userName": "By David Kim"
    },
    {
      "imageurl": ImageConstants.Food_Six,
      "rating": "4.9",
      "duration": "15:00",
      "title": "Perfect BBQ Chicken",
      "profileimage": "assets/image/bad.jpeg",
      "userName": "By Arjun Sing"
    }
  ];
 static List<Map<String, String>> popularCategoryList = [
  {
    "image":"assets/image/Pepper.jpeg",
    "title": "Pepper Sweetcorn Ramen",
    "duration": "10 Mins"
  },
  {
    "image":"assets/image/Spaghetti.jpeg",
    "title": "Spaghetti Carbonara",
    "duration": "15 Mins"
  },
  {
    "image":"assets/image/Chicken.jpeg",
    "title": "Chicken Caesar Salad",
    "duration": "20 Mins"
  },
  {
    "image":"assets/image/Beef.webp",
    "title": "Beef Tacos",
    "duration": "25 Mins"
  },
  {
    "image":"assets/image/Vegetable.jpeg",
    "title": "Vegetable Stir-Fry",
    "duration": "15 Mins"
  },
  {
    "image":"assets/image/Mango.webp",
    "title": "Mango Smoothie",
    "duration": "5 Mins"
  },
];
}
