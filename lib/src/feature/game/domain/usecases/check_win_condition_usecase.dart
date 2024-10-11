
import '../../../../core/usecase/use_case.dart';
import '../entities/game.dart';
import '../entities/player.dart';

class CheckWinConditionUsecase extends UseCase<Player?, Game>{
  @override
  Future<Player?> call(Game param) async {
    return param.getWinner();
  }
}