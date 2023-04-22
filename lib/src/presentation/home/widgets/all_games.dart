import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games_app/src/core/utils/constants.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../cubit/games_cubit.dart';
import 'game.dart';

class AllGames extends StatelessWidget {
  const AllGames({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<GamesCubit>(context).getAllGames();
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40),
      ),
      child: BlocBuilder<GamesCubit, GamesState>(
        builder: (context, state) {
          if (state is GamesLoadingState) {
            return Center(
              child: LoadingAnimationWidget.staggeredDotsWave(
                color: kTextColor7,
                size: 32,
              ),
            );
          } else if (state is GamesSuccessState) {
            return ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 16),
              itemBuilder: (context, i) => Game(game: state.games[i]),
              itemCount: state.games.length,
            );
          } else if (state is GamesErrorState) {
            return Center(
              child: Text(state.errorMessage),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
