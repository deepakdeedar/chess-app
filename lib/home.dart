import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var color = BoardType.brown;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'CHESS',
                  style: GoogleFonts.sansita(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ChessBoard(
                onMove: (move) {
                  print(move);
                },
                onCheckMate: (color) {
                  print(color);
                },
                onDraw: () {},
                size: MediaQuery.of(context).size.width,
                enableUserMoves: true,
                boardType: color,
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Choose Chess Board Colour',
                      style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RaisedButton(
                          color: Colors.green,
                          onPressed: () {
                            setState(() {
                              color = BoardType.green;
                            });
                          },
                          child: Text(
                            'Green',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        RaisedButton(
                          color: Colors.brown,
                          onPressed: () {
                            setState(() {
                              color = BoardType.brown;
                            });
                          },
                          child: Text(
                            'Brown',
                            style: TextStyle(color: Colors.amber),
                          ),
                        ),
                        RaisedButton(
                          color: Colors.orange,
                          onPressed: () {
                            setState(() {
                              color = BoardType.orange;
                            });
                          },
                          child: Text(
                            'Orange',
                            style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        RaisedButton(
                          color: Colors.brown[900],
                          onPressed: () {
                            setState(() {
                              color = BoardType.darkBrown;
                            });
                          },
                          child: Text(
                            'Dark Brown',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
