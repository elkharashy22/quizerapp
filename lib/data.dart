import 'package:flutter/material.dart';

const Color p1bink = Color(0xffFFDADA);
const Color p1lightbink = Color(0x55FFDADA);
const Color p1lightblue = Color(0xffDBF6E9);
const Color p1lightblueplus = Color(0xff9DDFD3);
const Color p1blue = Color(0xff31326F);
const Color p3darkplue = Color(0xff362C87);
var answers = {
  'C++': ['C++', 'Java', 'Python', 'Objective C'],
  'Dart': ['Kotlin', 'GO', 'Dart', 'Swift'],
  'Croatia': ['Norway', 'Croatia', 'Germany', 'England'],
  'Nile River': [
    'River Amazon',
    'Nile River',
    'Yangtze River',
    'Mississippi River'
  ],
};
var keys = ['C++', 'Dart', 'Croatia', 'Nile River'];
var scoresheet = [0, 0, 0, 0];
var questions = [
  '...... is oldest',
  'What is flutter based on?',
  'Where is Nikola Tesla from?',
  'Where is the longest river ? '
];
Container flatButtonBuilder() {
  return Container(
    width: double.infinity,
    child: FlatButton(
      onPressed: () {},
      child: Text(''),
    ),
  );
}
