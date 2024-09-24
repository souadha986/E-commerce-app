import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int equal = 0;
  int o = 0;
  int x = 0;
  var mytextstyle = GoogleFonts.pixelifySans(color: Colors.white, fontSize: 30);
  var mytextstyle1 = TextStyle(color: Colors.white, fontSize: 20);
  bool first = true;
  List<String> display = List.generate(9, (index) => ' ');
  String winer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: Column(children: [
          Expanded(
              child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Player O', style: mytextstyle),
                        Text(
                          '$o',
                          style: mytextstyle1,
                        ),
                      ],
                    )),
                Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Player X', style: mytextstyle),
                        Text(
                          '$x',
                          style: mytextstyle1,
                        ),
                      ],
                    ))
              ],
            ),
          )),
          Expanded(
            flex: 4,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: 9,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                    onTap: () {
                      Tap(index);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Color.fromARGB(255, 91, 89, 89)),
                      ),
                      child: Center(
                        child: Text(
                          display[index],
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                      ),
                    ));
              },
            ),
          ),
          Expanded(
              child: Container(
            child: Center(
              child: Text(
                'TIC TAC TOE GAME',
                style: mytextstyle,
              ),
            ),
          )),
        ]));
  }

  void Tap(int index) {
    setState(() {});
    if (first && display[index] == ' ') {
      display[index] = 'O';
    } else if (!first && display[index] == ' ') {
      (display[index] = 'X');
    }
    equal++;
    winner();
    first = !first;
  }

  void winner() {
    if (display[0] == display[1] &&
        display[1] == display[2] &&
        display[0] != ' ') {
      winer = display[0];
      show();
    } else if (display[3] == display[4] &&
        display[4] == display[5] &&
        display[3] != ' ') {
      winer = display[3];
      show();
    } else if (display[6] == display[7] &&
        display[7] == display[8] &&
        display[6] != ' ') {
      winer = display[6];
      show();
    } else if (display[0] == display[3] &&
        display[3] == display[6] &&
        display[0] != ' ') {
      winer = display[0];
      show();
    } else if (display[1] == display[4] &&
        display[4] == display[7] &&
        display[1] != ' ') {
      winer = display[1];
      show();
    } else if (display[2] == display[5] &&
        display[5] == display[8] &&
        display[2] != ' ') {
      winer = display[2];
      show();
    } else if (display[2] == display[4] &&
        display[4] == display[6] &&
        display[2] != ' ') {
      winer = display[2];
      show();
    } else if (display[0] == display[4] &&
        display[4] == display[8] &&
        display[0] != ' ') {
      winer = display[0];
      show();
    } else if (equal == 9) {
      showe();
    }
  }

  void showe() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('No One Win'),
            actions: [
              FloatingActionButton(
                onPressed: () {
                  clean();
                  Navigator.of(context).pop();
                },
                child: Text('Play Again'),
              )
            ],
          );
        });
  }

  void show() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('$winer is the  winner'),
            actions: [
              FloatingActionButton(
                onPressed: () {
                  clean();

                  Navigator.of(context).pop();
                },
                child: Text('Play Again'),
              ),
              FloatingActionButton(
                onPressed: () {
                  clean();

                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                },
                child: Text('cancel'),
              )
            ],
          );
        });
    if (winer == 'O') {
      o++;
    } else if (winer == 'X') {
      x++;
    }
  }

  void clean() {
    int i = 0;
    setState(() {
      for (i = 0; i <= 8; i++) {
        display[i] = ' ';
      }
    });
    equal = 0;
  }
}
