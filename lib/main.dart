import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.cyan.shade200,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/kawarimiku_v4x.png'),
              ),
              Text(
                'kawarimidoll',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'flutter developer'.toUpperCase(),
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                  color: Colors.teal.shade600,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(color: Colors.teal.shade600),
              ),
              myCard('@kawarimidoll', FontAwesomeIcons.twitter),
              myCard('@kawarimidoll', FontAwesomeIcons.github),
              myCard('Room101, Japan', Icons.room),
            ],
          ),
        ),
      ),
    );
  }

  Widget myCard(displayStr, icon) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
        leading: Icon(icon, color: Colors.teal),
        title: Text(
          displayStr,
          style: TextStyle(
            color: Colors.teal.shade900,
            fontFamily: 'Source Sans Pro',
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
