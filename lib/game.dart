class Game {
  List<int> chipsOfWhite = [
    2,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    5,
    0,
    0,
    0,
    0,
    3,
    0,
    5,
    0,
    0,
    0,
    0,
    0,
    0,
    0
  ];
  List<int> chipsOfBlack = [
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    5,
    0,
    3,
    0,
    0,
    0,
    0,
    5,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    2,
    0,
    0
  ];

  Game();

  int black(int location) {
    return chipsOfBlack[location - 1];
  }

  int white(int location) {
    return chipsOfWhite[location - 1];
  }

  bool moveChecker(int type, int prevLoc, int currLoc, int dice) {
    if (prevLoc + dice == currLoc) {
      if (type == 0) {
        if (chipsOfWhite[24] == 0) {
          if (chipsOfBlack[currLoc - 1] < 2) {
            return true;
          } else {
            return false;
          }
        } else {
          return false;
        }
      } else {
        if (chipsOfBlack[24] == 0) {
          if (chipsOfWhite[currLoc - 1] < 2) {
            return true;
          } else {
            return false;
          }
        } else {
          return false;
        }
      }
    } else {
      return false;
    }
  }

  List play(int type, int prevLoc, int currLoc) {
    List<int> tempBlack = chipsOfBlack;
    List<int> tempWhite = chipsOfWhite;
    if (type == 0) {
      tempWhite[currLoc]++;
      tempWhite[prevLoc]--;
      return tempWhite;
    } else {
      tempBlack[currLoc]++;
      tempBlack[prevLoc]--;
      return tempBlack;
    }
  }

  List tekPul(int type, int prevLoc, int currLoc) {
    List<int> tempBlack = chipsOfBlack;
    List<int> tempWhite = chipsOfWhite;
    if (type == 0) {
      if (chipsOfBlack[currLoc] == 1) {
        tempBlack[currLoc]--;
        tempBlack[24]++;
      }
      return tempBlack;
    } else {
      if (chipsOfWhite[currLoc] == 1) {
        tempWhite[currLoc]--;
        tempWhite[24]++;
      }
      return tempWhite;
    }
  }
}
