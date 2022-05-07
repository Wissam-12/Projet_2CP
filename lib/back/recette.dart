import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'database.dart';

class Quizz {
    String question;
    List<dynamic> choices;
    int rightAnswer;
    int score;
    int number;
    int ile;
    String notice;
    Set usersSolved = {};
    DatabaseReference? _id;

    Quizz(this.question, this.choices, this.rightAnswer, this.score, this.number, this.ile, this.notice);

    void solveQuizz(User user){
        this.usersSolved.add(user.uid);
        this.update();
    }

    void update(){
        updateQuizz(this, this._id);
    }

    void setId(DatabaseReference id){
        this._id = id;
    }

    Map<String, dynamic> toJson(){
        return{
            'question': this.question,
            'choices': this.choices,
            'usersSolved': this.usersSolved.toList(),
            'rightAnswer': this.rightAnswer,
            'score': this.score,
            'number': this.number,
            'ile': this.ile,
            'notice': this.notice,
        };
    }
}

Quizz createQuizz(record) {
  Map<String, dynamic> attributes = {
    'question': '',
    'choices': [],
    'usersSolved': [],
    'rightAnswer': 0,
    'score': 0,
    'number': 0,
    'ile': 0,
    'notice': '',
  };

    Map<String, dynamic>.from(record as dynamic).forEach((key, value){
        attributes[key] = value;
    });
  Quizz quizz = new Quizz(attributes['question'],attributes['choices'], attributes['rightAnswer'], attributes['score'], attributes['number'], attributes['ile'], attributes['notice']);
  quizz.usersSolved = new Set.from(attributes['usersSolved']);
  return quizz;
}