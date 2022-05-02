import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'quizz.dart';

final databaseReference = FirebaseDatabase.instance.reference();


DatabaseReference saveQuizz(Quizz quizz){
    var id = databaseReference.child('Quizzes/').push();
    id.set(quizz.toJson());
    return id;
}

void updateQuizz(Quizz quizz, DatabaseReference? id){
    if (id != null) {id.update(quizz.toJson());}
}

Future<List<Quizz>> getQuizzes() async {
    List<Quizz> quizzes = [];
    DataSnapshot dataSnapshot =( await databaseReference.child('Quizzes/').once()).snapshot;
    Map<String, dynamic>.from(dataSnapshot.value as dynamic).forEach((key, value){
        Quizz quizz = createQuizz(value);
        quizz.setId(databaseReference.child('Quizzes/' + key));
        quizzes.add(quizz);}
    
    );
    return quizzes;
}