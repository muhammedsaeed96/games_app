import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/game/repositories/game_repo._impl.dart';
import '../../../domain/game/models/game_model.dart';

part 'games_state.dart';

class GamesCubit extends Cubit<GamesState> {
  GamesCubit({required this.gameRepoImp}) : super(GamesInitial());
  final GameRepoImp gameRepoImp;

  void getAllGames() async {
    emit(GamesLoadingState());
    final result = await gameRepoImp.getGames();
    result.fold(
      (l) => emit(GamesErrorState(l.message)),
      (r) => emit(GamesSuccessState(r)),
    );
  }
}
