import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/resuable/image_card.dart';
import 'package:flutter/material.dart';

class NaturalWondersPage extends StatelessWidget {
  const NaturalWondersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Natural Wonders",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: mainNaturalWondersColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            children: [
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: mainTextColor,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ImageCard(
                title: "Nature Wonders Place-1",
                titleColor: subNaturalWondersColor,
                imageUrl: "assets/nature2.png",
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                isCornerRounded: false,
              ),
              const SizedBox(
                height: 25,
              ),
              ImageCard(
                title: "Nature Wonders Place-2",
                titleColor: subNaturalWondersColor,
                imageUrl: "assets/nature1.png",
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                isCornerRounded: false,
              ),
              const SizedBox(
                height: 25,
              ),
              ImageCard(
                title: "Nature Wonders Place-3",
                titleColor: subNaturalWondersColor,
                imageUrl: "assets/nature3.png",
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                isCornerRounded: false,
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
