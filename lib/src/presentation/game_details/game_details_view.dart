import 'package:flutter/material.dart';
import '../../domain/game/models/game_model.dart';
import 'widgets/game_details_body.dart';
import 'widgets/game_details_header.dart';

class GameDetailsView extends StatelessWidget {
  const GameDetailsView({super.key});
  static const routeName = 'game_details_view';
  @override
  Widget build(BuildContext context) {
    final game = ModalRoute.of(context)?.settings.arguments as GameModel;
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Stack(children: [
          GameDetailsHeader(
            imageUrl: game.backgroundImage,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: 326,
            child: GameDetailsBody(
              game: game,
            ),
          ),
        ]),
      ),
    );
  }
}
