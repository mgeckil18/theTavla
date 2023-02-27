import 'dart:math';
import 'game.dart';
import 'package:flutter/material.dart';

Game g = Game();
int playTurn = 0;
int prevLoc = 0;
int currLoc = 0;
int firstDice = 0;
int secondDice = 0;
List<int> movesLeft = [0, 0, 0, 0];

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueGrey.shade800,
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: const MainPage(),
    ),
  );
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String playerName = 'p1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TavLa'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {});
            },
            icon: const Icon(Icons.star),
          ),
          IconButton(
            onPressed: () {
              setState(() {});
            },
            icon: const Icon(Icons.play_arrow),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Player $playerName\'s turn'),
          const Move(),
          const Dice(),
        ],
      ),
    );
  }
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int dice1 = 1;
  int dice2 = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {
            setState(() {
              dice1 = Random().nextInt(6) + 1;
              dice2 = Random().nextInt(6) + 1;
              firstDice = dice1;
              secondDice = dice2;
              if (firstDice == secondDice) {
                movesLeft[0] = firstDice;
                movesLeft[1] = firstDice;
                movesLeft[2] = firstDice;
                movesLeft[3] = firstDice;
              } else {
                movesLeft[0] = firstDice;
                movesLeft[1] = secondDice;
              }
            });
          },
          child: Image.asset(
            'images/dice$dice1.png',
            height: 60.0,
          ),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              dice1 = Random().nextInt(6) + 1;
              dice2 = Random().nextInt(6) + 1;
              firstDice = dice1;
              secondDice = dice2;
            });
          },
          child: Image.asset(
            'images/dice$dice2.png',
            height: 60.0,
          ),
        ),
      ],
    );
  }
}

class Board extends StatefulWidget {
  const Board({Key? key}) : super(key: key);

  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Kapi(kapiNo: 1),
            Kapi(kapiNo: 2),
            Kapi(kapiNo: 3),
            Kapi(kapiNo: 4),
            Kapi(kapiNo: 5),
            Kapi(kapiNo: 6),
            SizedBox(
              width: 20.0,
            ),
            Kapi(kapiNo: 7),
            Kapi(kapiNo: 8),
            Kapi(kapiNo: 9),
            Kapi(kapiNo: 10),
            Kapi(kapiNo: 11),
            Kapi(kapiNo: 12),
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          children: const [
            Kapi(kapiNo: 13),
            Kapi(kapiNo: 14),
            Kapi(kapiNo: 15),
            Kapi(kapiNo: 16),
            Kapi(kapiNo: 17),
            Kapi(kapiNo: 18),
            SizedBox(
              width: 20.0,
            ),
            Kapi(kapiNo: 19),
            Kapi(kapiNo: 20),
            Kapi(kapiNo: 21),
            Kapi(kapiNo: 22),
            Kapi(kapiNo: 23),
            Kapi(kapiNo: 24),
          ],
        ),
      ],
    );
  }
}

class Kapi extends StatelessWidget {
  final int kapiNo;
  const Kapi({super.key, required this.kapiNo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: g.black(kapiNo) > 0,
          child: const CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.black54,
          ),
        ),
        Visibility(
          visible: g.black(kapiNo) > 1,
          child: const CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.black54,
          ),
        ),
        Visibility(
          visible: g.black(kapiNo) > 2,
          child: const CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.black54,
          ),
        ),
        Visibility(
          visible: g.black(kapiNo) > 3,
          child: const CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.black54,
          ),
        ),
        Visibility(
          visible: g.black(kapiNo) > 4,
          child: const CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.black54,
          ),
        ),
        Visibility(
          visible: g.black(kapiNo) > 5,
          child: const CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.black54,
          ),
        ),
        Visibility(
          visible: g.black(kapiNo) > 6,
          child: const CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.black54,
          ),
        ),
        Visibility(
          visible: g.black(kapiNo) > 7,
          child: const CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.black54,
          ),
        ),
        Visibility(
          visible: g.black(kapiNo) > 8,
          child: const CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.black54,
          ),
        ),
        Visibility(
          visible: g.black(kapiNo) > 0,
          child: const CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.white60,
          ),
        ),
        Visibility(
          visible: g.white(kapiNo) > 1,
          child: const CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.white60,
          ),
        ),
        Visibility(
          visible: g.white(kapiNo) > 2,
          child: const CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.white60,
          ),
        ),
        Visibility(
          visible: g.white(kapiNo) > 3,
          child: const CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.white60,
          ),
        ),
        Visibility(
          visible: g.white(kapiNo) > 4,
          child: const CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.white60,
          ),
        ),
        Visibility(
          visible: g.white(kapiNo) > 5,
          child: const CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.white60,
          ),
        ),
        Visibility(
          visible: g.white(kapiNo) > 6,
          child: const CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.white60,
          ),
        ),
        Visibility(
          visible: g.white(kapiNo) > 7,
          child: const CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.white60,
          ),
        ),
        Visibility(
          visible: g.white(kapiNo) > 8,
          child: const CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.white60,
          ),
        ),
      ],
    );
  }
}

class Move extends StatefulWidget {
  const Move({Key? key}) : super(key: key);

  @override
  State<Move> createState() => _MoveState();
}

class _MoveState extends State<Move> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Flexible(
            child: Row(
              children: [
                oyna(1),
                oyna(2),
                oyna(3),
                oyna(4),
                oyna(5),
                oyna(6),
                const SizedBox(
                  width: 20.0,
                ),
                oyna(7),
                oyna(8),
                oyna(9),
                oyna(10),
                oyna(11),
                oyna(12),
              ],
            ),
          ),
        ),
        Expanded(
          child: Flexible(
            child: Row(
              children: [
                oyna(13),
                oyna(14),
                oyna(15),
                oyna(16),
                oyna(17),
                oyna(18),
                const SizedBox(
                  width: 20.0,
                ),
                oyna(19),
                oyna(20),
                oyna(21),
                oyna(22),
                oyna(23),
                oyna(24),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Expanded oyna(int nu) {
    return Expanded(
      child: Flexible(
        child: TextButton(
          style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(
              const Size(20, 50),
            ),
          ),
          onPressed: () {
            setState(() {
              if (prevLoc == 0) {
                prevLoc = 1;
              } else {
                currLoc = 1;
                if (g.moveChecker(playTurn, prevLoc, currLoc, movesLeft[0]) ||
                    g.moveChecker(playTurn, prevLoc, currLoc, movesLeft[1])) {
                  g.play(playTurn, prevLoc, currLoc);
                  g.tekPul(playTurn, prevLoc, currLoc);
                  if (movesLeft[0] == currLoc - prevLoc) {
                    if (movesLeft[0] != 0) {
                      movesLeft[0] = 0;
                    } else if (movesLeft[1] != 0) {
                      movesLeft[1] = 0;
                    } else if (movesLeft[2] != 0) {
                      movesLeft[2] = 0;
                    } else if (movesLeft[3] != 0) {
                      movesLeft[3] = 0;
                    }
                  } else {
                    movesLeft[1] = 0;
                  }
                  if (movesLeft[0] +
                          movesLeft[0] +
                          movesLeft[0] +
                          movesLeft[0] ==
                      0) {
                    playTurn = 1 - playTurn;
                  }
                  prevLoc = 0;
                }
              }
            });
          },
          child: Kapi(
            kapiNo: nu,
          ),
        ),
      ),
    );
  }
}
