import 'package:connect_four/src/feature/game/domain/entities/game.dart';
import 'package:connect_four/src/feature/game/domain/entities/player.dart';
import 'package:connect_four/src/feature/game/domain/usecases/make_move_bot_usecase.dart';
import 'package:connect_four/src/feature/game/domain/usecases/start_game_usecase.dart';
import 'package:test/test.dart';

void main() {
  group('Minimax AI Tests', () {
    late Game game;
    late MakeMoveBotUsecase bot;
    late StartGameUsecase startGame;

    setUp(() async {
      // Initialize the game instance before each test
      bot = MakeMoveBotUsecase();
      startGame = StartGameUsecase();
      Player p1 = Player(id: '1', name: 'Player 1');
      Player p2 = Player(id: '2', name: 'Bot');
      game = await startGame((p1, p2));
    });

    test('AI should block player\'s winning move', () {
      // Setup the board where the player is about to win
      game.board.grid = [
        [null, null, null, null, null, null, null],
        [null, null, null, null, null, null, null],
        [null, null, null, null, null, null, null],
        [null, null, null, null, null, null, '1'],
        [null, null, null, null, null, null, '1'],
        [null, null, null, null, null, null, '1'],
      ];

      // AI (player -1) should block column 4 (index 3)
      int bestMove = getBestMove(game);
      expect(bestMove, equals(6)); // Expect the AI to block in column 3
    });

    test('AI should choose a winning move', () {
      // Setup the board where the AI is about to win
      game.board.grid = [
        [null, null, null, null, null, null, null],
        [null, null, null, null, null, null, null],
        [null, null, null, null, null, null, null],
        [null, null, '2', '1', null, null, null],
        [null, '2', '1', '1', null, null, null],
        ['2', '2', '2', '1', null, null, null],
      ];

      // AI (player -1) should drop in column 4 to win
      int bestMove = getBestMove(game);
      expect(bestMove, equals(3)); // Expect AI to drop in column 3 to win
    });

    test('AI should prefer a center move in an empty board', () {
      // Setup an empty board
      game.board.grid = [
        [null, null, null, null, null, null, null],
        [null, null, null, null, null, null, null],
        [null, null, null, null, null, null, null],
        [null, null, null, null, null, null, null],
        [null, null, null, null, null, null, null],
        [null, null, null, null, null, null, null],
      ];

      // In an empty board, the AI should prioritize the center column (column 3)
      int bestMove = getBestMove(game);
      expect(bestMove, equals(3)); // Expect AI to choose the center column
    });

    // test('AI should handle a full board (draw)', () {
    //   // Setup a board that is full
    //   game.board = [
    //     [1, -1, 1, -1, 1, -1, 1],
    //     [-1, 1, -1, 1, -1, 1, -1],
    //     [1, -1, 1, -1, 1, -1, 1],
    //     [-1, 1, -1, 1, -1, 1, -1],
    //     [1, -1, 1, -1, 1, -1, 1],
    //     [-1, 1, -1, 1, -1, 1, -1],
    //   ];

    //   // On a full board, no valid moves should be available
    //   List<int> validMoves = game.getValidMoves(game.board);
    //   expect(validMoves, isEmpty); // No valid moves should be available
    // });
  });
}
