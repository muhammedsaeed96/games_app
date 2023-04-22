import 'package:flutter/material.dart';
import 'package:games_app/src/core/widgets/cashed_image.dart';
import 'package:games_app/src/features/home/data/models/game_model.dart';

import '../../../../../core/config/size_config.dart';
import '../../../../../core/config/themes/app_theme.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/widgets/default_button.dart';
import '../../../../../core/widgets/game_ratings_icons.dart';
import '../../../../game_details/presentation/views/game_details_view.dart';

class Game extends StatelessWidget {
  const Game({super.key, required this.game});
  final GameModel game;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: AppTheme.roundedContainer,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
      margin: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 100,
            width: 82,
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
              child: CashedImage(imageUrl: game.backgroundImage),
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            width: getProportionateScreenWidth(125),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  game.name,
                  style: subHeadTextStyle,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5),
                Text(
                  game.slug,
                  style: normalTextStyle.copyWith(color: kTextColor3),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5),
                GameRatingsIcons(rating: game.rating),
              ],
            ),
          ),
          const Spacer(),
          DefaultButton(
            text: 'view more',
            press: () => Navigator.pushNamed(
              context,
              GameDetailsView.routeName,
              arguments: game,
            ),
          ),
        ],
      ),
    );
  }
}
