import 'dart:math';

extension ContainsAll on List {
  bool containsAll(int x, int y, [z]) {
    if (z == null)
      return contains(x) && contains(y);
    else
      return contains(x) && contains(y) && contains(z);
  }
}

class Player {
  static const x = 'x';
  static const o = 'o';
  static const empty = '';
  static List<int> playerX = [];
  static List<int> playerY = [];
}

class Game {
  void playGame(int index, String activePlayer) {
    if (activePlayer == 'x')
      Player.playerX.add(index);
    else
      Player.playerY.add(index);
  }

  checkWinner() {
    String winner = '';

    if ((Player.playerX.containsAll(0, 1, 2) ||
        Player.playerX.containsAll(3, 4, 5) ||
        Player.playerX.containsAll(6, 7, 8) ||
        Player.playerX.containsAll(0, 3, 6) ||
        Player.playerX.containsAll(1, 4, 7) ||
        Player.playerX.containsAll(2, 5, 8) ||
        Player.playerX.containsAll(0, 4, 8) ||
        Player.playerX.containsAll(2, 4, 6)))
      winner = 'x';
    else if ((Player.playerY.containsAll(0, 1, 2) ||
        Player.playerY.containsAll(3, 4, 5) ||
        Player.playerY.containsAll(6, 7, 8) ||
        Player.playerY.containsAll(0, 3, 6) ||
        Player.playerY.containsAll(1, 4, 7) ||
        Player.playerY.containsAll(2, 5, 8) ||
        Player.playerY.containsAll(0, 4, 8) ||
        Player.playerY.containsAll(2, 4, 6)))
      winner = 'o';
    else
      winner = '';

    return winner;
  }

  Future<void> autoPlay(activePlayer) async {
    int index = 0;
    List<int> emptyCells = [];

    for (var i = 0; i < 9; i++) {
      if (!(Player.playerX.contains(i) || Player.playerY.contains(i)))
        emptyCells.add(i);
    }
    if (Player.playerX.containsAll(0, 1) && emptyCells.contains(2))
      index = 2;
    else {
      Random random = Random();

      int randomIndex = random.nextInt(emptyCells.length);

      index = emptyCells[randomIndex];
    }
    //mdessing with a.i logic
    if (Player.playerX.containsAll(0, 1) && emptyCells.contains(2)) index = 2;
    if (Player.playerX.containsAll(0, 2) && emptyCells.contains(1)) index = 1;
    if (Player.playerX.containsAll(1, 2) && emptyCells.contains(0)) index = 0;
    if (Player.playerX.containsAll(0, 3) && emptyCells.contains(6)) index = 6;
    if (Player.playerX.containsAll(6, 3) && emptyCells.contains(0)) index = 0;
    if (Player.playerX.containsAll(0, 6) && emptyCells.contains(3)) index = 3;
    if (Player.playerX.containsAll(0, 4) && emptyCells.contains(8)) index = 8;
    if (Player.playerX.containsAll(0, 8) && emptyCells.contains(4)) index = 4;
    if (Player.playerX.containsAll(8, 4) && emptyCells.contains(0))
      index = 0;
    else {
      Random random = Random();

      int randomIndex = random.nextInt(emptyCells.length);

      index = emptyCells[randomIndex];
    }

////////////////////////////////////////////////
    if (Player.playerY.containsAll(0, 1) && emptyCells.contains(2)) index = 2;
    if (Player.playerY.containsAll(0, 2) && emptyCells.contains(1)) index = 1;
    if (Player.playerY.containsAll(1, 2) && emptyCells.contains(0)) index = 0;
    if (Player.playerY.containsAll(0, 3) && emptyCells.contains(6)) index = 6;
    if (Player.playerY.containsAll(6, 3) && emptyCells.contains(0)) index = 0;
    if (Player.playerY.containsAll(0, 6) && emptyCells.contains(3)) index = 3;
    if (Player.playerY.containsAll(6, 7) && emptyCells.contains(8)) index = 8;
    if (Player.playerY.containsAll(6, 8) && emptyCells.contains(7)) index = 7;
    if (Player.playerY.containsAll(8, 7) && emptyCells.contains(6)) index = 6;
    if (Player.playerY.containsAll(2, 5) && emptyCells.contains(8)) index = 8;
    if (Player.playerY.containsAll(2, 8) && emptyCells.contains(5)) index = 5;
    if (Player.playerY.containsAll(5, 8) && emptyCells.contains(2)) index = 2;
    if (Player.playerY.containsAll(0, 4) && emptyCells.contains(8)) index = 8;
    if (Player.playerY.containsAll(4, 8) && emptyCells.contains(0)) index = 0;
    if (Player.playerY.containsAll(8, 0) && emptyCells.contains(4)) index = 4;
    if (Player.playerY.containsAll(6, 2) && emptyCells.contains(4)) index = 4;
    if (Player.playerY.containsAll(6, 4) && emptyCells.contains(2)) index = 2;
    if (Player.playerY.containsAll(2, 4) && emptyCells.contains(6)) index = 6;
    if (Player.playerY.containsAll(1, 7) && emptyCells.contains(4)) index = 4;
    if (Player.playerY.containsAll(1, 4) && emptyCells.contains(7)) index = 7;
    if (Player.playerY.containsAll(7, 4) && emptyCells.contains(1)) index = 1;
    if (Player.playerY.containsAll(6, 2) && emptyCells.contains(4)) index = 4;
    if (Player.playerY.containsAll(6, 4) && emptyCells.contains(2)) index = 2;
    if (Player.playerY.containsAll(2, 4) && emptyCells.contains(6)) index = 6;

    //  if ((Player.playerY.containsAll(0, 1, 2) ||
    //     Player.playerY.containsAll(3, 4, 5) ||
    //     Player.playerY.containsAll(6, 7, 8) ||
    //     Player.playerY.containsAll(0, 3, 6) ||
    //     Player.playerY.containsAll(1, 4, 7) ||
    //     Player.playerY.containsAll(2, 5, 8) ||
    //     Player.playerY.containsAll(0, 4, 8) ||
    //     Player.playerY.containsAll(2, 4, 6)))

    //
    playGame(index, activePlayer);
  }
}
