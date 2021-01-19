import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            child: Column(
              children: [
                Text('your final score is #score'),
                FlatButton(onPressed: null, child: null)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
