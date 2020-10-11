import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';
import 'package:flutter_chess_board/src/chess_board.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: new MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var color = BoardType.brown;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  )
                ),
              ),
              SizedBox(height: 20,),
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
              Row(
                children: [
                  FlatButton(
                    onPressed: () {
                      setState(() {
                        color = BoardType.green;
                      });
                    },
                    child: Text('Green'),
                  ),
                  FlatButton(
                    onPressed: () {
                      setState(() {
                        color = BoardType.brown;
                      });
                    },
                    child: Text('Brown'),
                  ),
                  FlatButton(
                    onPressed: () {
                      setState(() {
                        color = BoardType.orange;
                      });
                    },
                    child: Text('Orange'),
                  ),
                  FlatButton(
                    onPressed: () {
                      setState(() {
                        color = BoardType.darkBrown;
                      });
                    },
                    child: Text('Dark Brown'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
