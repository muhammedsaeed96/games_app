part of 'games_cubit.dart';

abstract class GamesState extends Equatable {}

class GamesInitial extends GamesState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class GamesLoadingState extends GamesState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class GamesSuccessState extends GamesState {
  GamesSuccessState(this.games);
  final List<GameModel> games;

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class GamesErrorState extends GamesState {
  GamesErrorState(this.errorMessage);
  final String errorMessage;
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
