import 'package:awesome_places/utils/colors.dart';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final bool isCornerRounded;
  final Color titleColor;

  const ImageCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.isCornerRounded,
    required this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 22,
            color: titleColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        isCornerRounded
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  imageUrl,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              )
            : Image.asset(
                imageUrl,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
        const SizedBox(
          height: 15,
        ),
        Text(
          description,
          style: TextStyle(
            fontSize: 16,
            color: mainTextColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
