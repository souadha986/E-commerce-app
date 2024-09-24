import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'HomePage.dart';
import 'package:avatar_glow/avatar_glow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp1(),
    );
  }
}

class MyApp1 extends StatefulWidget {
  const MyApp1({super.key});

  @override
  State<MyApp1> createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
            child: Container(
                child: Padding(
          padding: EdgeInsets.only(top: 60),
          child: Text(
            '  TIC      TAC      TOE',
            style: GoogleFonts.pixelifySans(fontSize: 50, color: Colors.white),
          ),
        ))),
        Expanded(
            child: Padding(
                padding: EdgeInsets.all(1), //left, top, right, bottom
                child: Container(
                    child: AvatarGlow(
                        duration: Duration(seconds: 2),
                        glowColor: Colors.white,
                        repeat: true,
                        startDelay: Duration(seconds: 1),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(style: BorderStyle.none),
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://c8.alamy.com/comp/2H884EY/tic-tac-toe-variations-table-mini-game-vector-illustration-2H884EY.jpg',
                            ),
                            radius: 130,
                          ),
                        ))))),
        Expanded(
            child: Padding(
                padding: EdgeInsets.all(80),
                child: SizedBox(
                  width: 200.0,
                  height: 0.0,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                      setState(() {});
                    },
                    color: Colors.white,
                    child: Text('Play Game',
                        style: GoogleFonts.pixelifySans(
                            color: Colors.black, fontSize: 30)),
                  ),
                )))
      ]),
    );
  }
}
