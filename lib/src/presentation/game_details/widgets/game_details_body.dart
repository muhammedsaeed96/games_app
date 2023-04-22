import 'package:flutter/material.dart';
import 'package:games_app/src/core/widgets/cashed_image.dart';
import '../../../core/utils/constants.dart';
import '../../../core/widgets/default_button.dart';
import '../../../core/widgets/game_ratings_icons.dart';
import '../../../core/widgets/rounded_container.dart';
import '../../../domain/game/models/game_model.dart';
import 'game_details_screenshots.dart';

class GameDetailsBody extends StatelessWidget {
  const GameDetailsBody({super.key, required this.game});

  final GameModel game;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      child: Column(
        children: [
          ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(0),
            children: [
              Container(
                height: 150,
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 130,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black45,
                              blurRadius: 1,
                              blurStyle: BlurStyle.outer,
                              spreadRadius: 0.1,
                            )
                          ]),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: CashedImage(imageUrl: game.backgroundImage)),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          game.name,
                          style: subHeadTextStyle,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          game.slug,
                          style: normalTextStyle,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: kTextColor4,
                              size: 24,
                            ),
                            const SizedBox(width: 5),
                            Text(game.rating.toString()),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              GameDetailsScreenshots(screenshots: game.screenshots),
              const SizedBox(height: 16),
              SizedBox(
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ratings and Review', style: subHeadTextStyle),
                    const SizedBox(height: 12),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          game.rating.toString(),
                          style: const TextStyle(
                              fontSize: 48,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GameRatingsIcons(
                              rating: game.rating,
                              iconSize: 24.0,
                            ),
                            const SizedBox(height: 5),
                            Text(
                              '${game.review} review',
                              style: normalTextStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
              width: double.infinity,
              height: 50,
              margin: const EdgeInsets.only(bottom: 20),
              child: DefaultButton(
                text: 'install',
                press: () => {},
              ))
        ],
      ),
    );
  }
}
