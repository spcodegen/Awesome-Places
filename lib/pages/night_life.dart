import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/resuable/image_card.dart';
import 'package:flutter/material.dart';

class NightLifePage extends StatelessWidget {
  const NightLifePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Nightlife",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: mainNightlifeColor,
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
                title: "Nightlife Place-1",
                titleColor: subNightlifeColor,
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                imageUrl: "assets/night1.jpg",
                isCornerRounded: true,
              ),
              const SizedBox(
                height: 25,
              ),
              ImageCard(
                title: "Nightlife Place-2",
                titleColor: subNightlifeColor,
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                imageUrl: "assets/night2.jpg",
                isCornerRounded: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
