import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: size.height*0.2,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('images/me.jpg'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Abdelrahman Atef',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            Text(
              'The Winner',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                letterSpacing: 2.5,
              ),
            ),
            SizedBox(
              width: 200,
              height: 10,
              child: Divider(
                color: Colors.blue,
              ),
            ),
            Card(
              color: Colors.lightBlueAccent,
              margin: EdgeInsets.fromLTRB(25, 9, 25, 9),
              child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.white),
                  title: Text(
                    '+20 101170253',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  )),
            ),
            Card(
              color: Colors.lightBlueAccent,
              margin: EdgeInsets.fromLTRB(25, 9, 25, 9),
              child: ListTile(
                  leading: Icon(Icons.email, color: Colors.white),
                  title: Text(
                    'atef.abdo08@gmail.com',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
