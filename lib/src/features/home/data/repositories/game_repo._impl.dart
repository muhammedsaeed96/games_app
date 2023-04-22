import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:games_app/src/core/utils/api_service.dart';
import 'package:games_app/src/core/utils/exceptions/dio_exceptions.dart';
import 'package:games_app/src/features/home/data/models/game_model.dart';

import 'game_repo.dart';

class GameRepoImp implements GameRepo {
  GameRepoImp({required this.apiService});

  final ApiService apiService;

  @override
  Future<Either<DioExceptions, List<GameModel>>> getGames() async {
    List<GameModel> items = [];
    try {
      final data =
          await apiService.get(endPoint: 'games') as Map<String, dynamic>;
      final games = data['results'];
      for (var game in games) {
        items.add(GameModel.fromJson(game));
      }
      return right(items);
    } catch (e) {
      if (e is DioError) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
