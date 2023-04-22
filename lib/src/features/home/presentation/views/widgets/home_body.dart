import 'package:flutter/material.dart';
import 'package:games_app/src/core/widgets/rounded_container.dart';
import 'all_games.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const RoundedContainer(
      child: AllGames(),
    );
  }
}
