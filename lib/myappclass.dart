import 'package:flutter/material.dart';
import 'data.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

var _index = 0;
var currentquestion = questions[_index];
var answer1 = answers[keys[_index]][0];
var answer2 = answers[keys[_index]][1];
var answer3 = answers[keys[_index]][2];
var answer4 = answers[keys[_index]][3];
var butoncolor = p3darkplue;
var backgroundappcolor = p1bink;
bool checker = true;
var score = 0;

class MyAppState extends State<MyApp> {
  values(id) {
    setState(() {
      if (id == -2) {
        _index--;
        score -= scoresheet[_index];
        scoresheet[_index] = 0;
      }
      if (id == -1) {
        _index = 0;
        checker = true;
        score = 0;
        scoresheet.fillRange(0, 3, 0);
        id = 0;
      }
      if (_index < 4) {
        answer1 = answers[keys[_index]][0];
        answer2 = answers[keys[_index]][1];
        answer3 = answers[keys[_index]][2];
        answer4 = answers[keys[_index]][3];
        currentquestion = questions[_index];

        if (_index != 0 && id != -2) {
          if (answers[keys[_index - 1]][id] == keys[_index - 1]) {
            score++;
            scoresheet[_index - 1]++;
          }
        }
      } else {
        score = (answers[keys[_index - 1]][id] == keys[_index - 1])
            ? score + 1
            : score;
        checker = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: butoncolor,
          title: Text('Quiz1'),
        ), //still need a modify
        body: Container(
          margin: EdgeInsets.all(25),
          width: double.infinity,
          child: checker
              ? Container(
                  child: Column(
                    children: [
                      Text(currentquestion),
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 25, 15, 0),
                        child: FlatButton(
                          onPressed: () {
                            _index++;
                            values(0);
                          },
                          child: Text(answer1,
                              style: TextStyle(color: Colors.white)),
                        ),
                        width: double.infinity,
                        color: butoncolor,
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(15, 5, 15, 0),
                          child: FlatButton(
                            onPressed: () {
                              _index++;
                              values(1);
                            },
                            child: Text(
                              answer2,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          width: double.infinity,
                          color: butoncolor),
                      Container(
                          margin: EdgeInsets.fromLTRB(15, 5, 15, 0),
                          child: FlatButton(
                            onPressed: () {
                              _index++;
                              values(2);
                            },
                            child: Text(
                              answer3,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          width: double.infinity,
                          color: butoncolor),
                      Container(
                          margin: EdgeInsets.fromLTRB(15, 5, 15, 0),
                          child: FlatButton(
                            onPressed: () {
                              _index++;
                              values(3);
                            },
                            child: Text(
                              answer4,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          width: double.infinity,
                          color: butoncolor),
                    ],
                  ),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'your final score is ',
                      style: TextStyle(fontSize: 40, color: butoncolor),
                    ),
                    Text(
                      '$score',
                      style: TextStyle(fontSize: 100, color: Colors.pink[500]),
                    ),
                    Container(
                      child: FlatButton(
                        padding: EdgeInsets.all(20),
                        //color: butoncolor,
                        onPressed: () {
                          values(-1);
                        },
                        child: Text(
                          'try again !',
                          style: TextStyle(color: butoncolor, fontSize: 20),
                        ),
                      ),
                    )
                  ],
                ),
        ),

        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.navigate_before_outlined),
          backgroundColor: butoncolor,
          foregroundColor: Colors.white,
          onPressed: _index > 0 && _index < 4
              ? () {
                  values(-2);
                }
              : null,
        ),
      ),
    );
  }
}
