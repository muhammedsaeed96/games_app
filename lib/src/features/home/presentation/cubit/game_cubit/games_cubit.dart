import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:games_app/src/features/home/data/models/game_model.dart';
import 'package:games_app/src/features/home/data/repositories/game_repo._impl.dart';

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
