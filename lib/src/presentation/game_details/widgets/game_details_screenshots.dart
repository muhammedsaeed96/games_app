import 'package:flutter/material.dart';
import 'package:games_app/src/core/widgets/cashed_image.dart';

class GameDetailsScreenshots extends StatelessWidget {
  const GameDetailsScreenshots({
    super.key,
    required this.screenshots,
  });

  final List<dynamic> screenshots;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        itemBuilder: (ctx, i) => Container(
          margin: const EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 1,
                  blurStyle: BlurStyle.outer,
                  spreadRadius: 0.1,
                )
              ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: CashedImage(
              imageUrl: screenshots[i]['image'],
              width: 240,
            ),
          ),
        ),
        itemCount: screenshots.length,
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
      ),
    );
  }
}
