// ignore_for_file: deprecated_member_use

import 'dart:math';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


bool a=true;
bool b=true;


savePrefSfx(bool son) async{
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setBool("sfx", son);
}

savePrefBgm(bool son) async{
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setBool("bgm", son);
}

getPref() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var sfx = preferences.getBool("sfx");
  if (sfx!=null) {
    a = sfx;
  }
  var bgm = preferences.getBool("bgm");
    if (bgm!=null) {
    b = bgm;
  }
}


AudioPlayer advancedPlayer = AudioPlayer();
AudioCache audioCache = AudioCache(fixedPlayer: advancedPlayer);

playFile() async{
  advancedPlayer = await audioCache.loop("audio/backgroundMusic.mp3"); // assign player here
}

stopFile() {
  advancedPlayer.stop(); // stop the file like this
}

pauseFile() {
  advancedPlayer.pause();
}

resumeFile() {
  advancedPlayer.resume();
}


final player = AudioCache();

gestionSfx() {
  if (a==true) {
    player.play('audio/buttonSound.mp3');
  }
}

gestionBgm() {
  if (b==true) {
    playFile();
  }
  else {
    stopFile();
  }
}



showDialogFunc(context)  {
  return showDialog(
      context: context,
      builder: (context) {
        return Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(left: 200, bottom: 450),
            padding: EdgeInsets.only(top: 50),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 15),
                  height: 60,
                  width: 60,
                  child: RaisedButton(
                    padding: const EdgeInsets.all(15),
                    color: Color(0xffFFA450),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                    onPressed: () {                      
                      b=!b;
                      gestionSfx();
                      savePrefBgm(b);
                      gestionBgm();
                    },
                    child: 
                    Icon(
                      (b==true) ? Icons.music_note : Icons.music_off,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 10),
                  height: 60,
                  width: 60,
                  child: RaisedButton(
                    padding: const EdgeInsets.all(15),
                    color: Color(0xffFFA450),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                     onPressed: () {
                        a = !a;
                        gestionSfx();
                        savePrefSfx(a);
                    },
                    child: Icon(
                      (a==true) ? Icons.volume_up : Icons.volume_off,
                      color: Colors.white,
                      size: 32,
                    ),                 
                  ),
                )
              ],
            ));
      });
}



encouragement() {
  if (a) {
    var random = new Random();
    int i = 1 + random.nextInt(4);
    if(i==1) {player.play("encouragements/bien-joué.mp3");} 
    if(i==2) {player.play("encouragements/bravo.mp3");} 
    if(i==3) {player.play("encouragements/excellent.mp3");} 
    if(i==4) {player.play("encouragements/formidable.mp3");}
  }
}



AudioPlayer noticePlayer = AudioPlayer();
AudioCache noticeCache = AudioCache(fixedPlayer: noticePlayer);

noticeSon(int i) async {
  if (a) {
    switch(i) {
      case 4 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/1.mp3"); break;
      case 10 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/2.mp3"); break;
      case 12 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/3.mp3"); break;
      case 13 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/4.mp3"); break;
      case 16 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/5.mp3"); break;
      case 18 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/6.mp3"); break;
      case 22 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/7.mp3"); break;
      case 27 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/8.mp3"); break;
      case 31 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/9.mp3"); break;
      case 42 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/10.mp3"); break;
      case 44 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/11.mp3"); break;    
      case 46 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/12.mp3"); break;
      case 48 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/13.mp3"); break;
      case 50 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/14.mp3"); break;
      case 55 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/15.mp3"); break;
      case 57 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/16.mp3"); break;
      case 60 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/17.mp3"); break;
      case 62 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/18.mp3"); break;
      case 65 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/19.mp3"); break;
      case 71 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/20.mp3"); break;
      case 82 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/21.mp3"); break;
      case 106 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/22.mp3"); break;
      case 116 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/23.mp3"); break;
      case 119 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/24.mp3"); break;
      case 121 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/25.mp3"); break;
      case 128 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/26.mp3"); break;
      case 134 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/27.mp3"); break;
      case 145 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/28.mp3"); break;
      case 146 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/29.mp3"); break;
      case 148 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/30.mp3"); break;
      case 149 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/31.mp3"); break;
      case 151 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/32.mp3"); break;
      case 152 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/33.mp3"); break;
      case 160 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/34.mp3"); break;
      case 164 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/35.mp3"); break;
      case 168 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/36.mp3"); break;
      case 179 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/37.mp3"); break;
      case 180 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/38.mp3"); break;
      case 187 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/39.mp3"); break;
      case 188 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/40.mp3"); break;
      case 190 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/41.mp3"); break;
      case 193 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/42.mp3"); break;
      case 194 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/43.mp3"); break;
      case 197 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/44.mp3"); break;
      case 199 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/45.mp3"); break;
      case 201 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/46.mp3"); break;
      case 260 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/47.mp3"); break;
      case 261 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/48.mp3"); break;
      case 271 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/49.mp3"); break;
      case 275 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/50.mp3"); break;
      case 284 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/51.mp3"); break;
      case 285 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/52.mp3"); break;
      case 289 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/53.mp3"); break;
      case 297 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/54.mp3"); break;
      case 313 : advancedPlayer.setVolume(0.3); noticePlayer = await noticeCache.play("notices/55.mp3"); break;
    }
    
    noticePlayer.onPlayerCompletion.listen((event) {
      advancedPlayer.setVolume(1);
    });
  }
}

stopNotice() {
  noticePlayer.stop();
  advancedPlayer.setVolume(1);
}

pauseNotice() {
  noticePlayer.pause();
}

resumeNotice() {
  noticePlayer.resume();
}



rightSon() {
  if(a) {
    player.play("audio/correctAnswer.mp3");
  }
}

wrongSon() {
  if (a) {
    player.play("audio/wrongAnswer.mp3");
  }
}

cadeauSon() {
  if(a) {
    player.play("fin/cadeau.mp3");
  }
}