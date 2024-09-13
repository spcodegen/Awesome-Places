import 'package:awesome_places/pages/land_marks.dart';
import 'package:awesome_places/pages/natural_wonders.dart';
import 'package:awesome_places/pages/night_life.dart';
import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/resuable/home_page/category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Awesome",
                          style: TextStyle(
                            fontSize: 20,
                            color: mainTextColor,
                          ),
                        ),
                        const Text(
                          "Places",
                          style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.w800,
                            color: mainColor,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: mainColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.",
                  style: TextStyle(
                    color: mainTextColor,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  "assets/main.png",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Select a Place from the categories",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: mainColor,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NaturalWondersPage(),
                          ),
                        );
                      },
                      child: const CategoryCard(
                        cardWidth: 220,
                        category: "Natural Wonders",
                        cardBgColor: firstCategoryColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NightLifePage(),
                          ),
                        );
                      },
                      child: const CategoryCard(
                        cardWidth: 220,
                        category: "Nightlife",
                        cardBgColor: firstCategoryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LandMarksPage(),
                          ),
                        );
                      },
                      child: const CategoryCard(
                        cardWidth: 220,
                        category: "Landmarks",
                        cardBgColor: secondCategoryColor,
                      ),
                    ),
                    const CategoryCard(
                      cardWidth: 220,
                      category: "Cultural",
                      cardBgColor: secondCategoryColor,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const CategoryCard(
                  cardWidth: double.infinity,
                  category: "Book For A Ride Today!",
                  cardBgColor: thirdCategoryColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
