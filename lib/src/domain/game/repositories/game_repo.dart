import 'package:dartz/dartz.dart';

import '../../../core/utils/exceptions/dio_exceptions.dart';
import '../models/game_model.dart';

abstract class GameRepo {
  Future<Either<DioExceptions, List<GameModel>>> getGames();
}
