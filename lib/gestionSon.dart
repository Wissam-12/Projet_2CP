// ignore_for_file: deprecated_member_use

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool a=true;
bool b=true;
// bool yes = false;

final player = AudioCache();

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



