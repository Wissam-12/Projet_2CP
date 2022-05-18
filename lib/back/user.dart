import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'database.dart';

class UserInfo {
    String uid;
    String userName;
    String email;
    int currentIle;
    int score;
    int currentStage;
    File? profilImage;
    DatabaseReference? _id;

    UserInfo(this.userName, this.email, this.currentIle, this.score, this.currentStage);

    Map<String, dynamic> toJson(){
        return{
            'id': this.id,
            'userName': this.userName,
            'email': this.email,
            'currentIle': this.currentIle,
            'score': this.score,
            'currentStage': this.currentStage,
            'profilImage': this.profilImage,
        };
    }
}