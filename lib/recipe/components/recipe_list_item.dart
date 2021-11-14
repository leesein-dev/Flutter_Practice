import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  final String imageName;
  final String title;

  const RecipeListItem(this.imageName, this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 2 / 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/recipe/images/$imageName.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontFamily: "PatuaOne",
            ),
          ),
          Text(
            "Have you ever your own $title? Once you've tried a homemade $title, you'll never go back.",
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
              fontFamily: "PatuaOne",
            ),
          )
        ],
      ),
    );
  }
}
