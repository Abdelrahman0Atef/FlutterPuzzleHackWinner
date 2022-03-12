import 'package:flutter/material.dart';
import 'package:flutterpuzzlehackwinner/Animation/myAnimation.dart';
import 'aboutmeScreen.dart';
import '../Widgets/Board.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.blueGrey,
            body: Container(
              padding: EdgeInsets.all(10),
              height: size.height,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Image.asset(
                    'images/dash.png',
                    width: 400,
                    height: 600,
                    fit: BoxFit.contain,
                  )),
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(myAnimation(Page: Board()));
                    },
                    child: Text('Play',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                    color: Colors.lightBlueAccent,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(myAnimation(Page: AboutMe()));
                    },
                    child: Text('About me',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                    color: Colors.lightBlueAccent,
                  ),
                ],
              ),
            )));
  }
}
