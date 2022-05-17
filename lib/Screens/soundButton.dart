import 'package:flutter/material.dart';

class SoundButton extends StatefulWidget {
  SoundButton({Key? key}) : super(key: key);

  @override
  State<SoundButton> createState() => _SoundButtonState();
}

class _SoundButtonState extends State<SoundButton>
    with SingleTickerProviderStateMixin {
  // AnimationController animationController;
  //Animation degOneTranslationAnimation;

  double getRadianFromDegree(double degree) {
    double unitRadian = 57.295779513;
    return degree / unitRadian;
  }

  @override
  void initState() {
    AnimationController animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));
    Animation degOneTranslationAnimation =
        Tween(begin: 0.0, end: 1.0).animate(animationController);
    animationController.addListener(() {
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade200,
      body: Container(
        margin: EdgeInsets.only(top: 200),
        child: Stack(
          children: <Widget>[
            Positioned(
                child: Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset.fromDirection(getRadianFromDegree(50)),
                  child: CircularButton(
                      Colors.red,
                      60,
                      60,
                      Icon(
                        Icons.music_note,
                        color: Colors.white,
                      )),
                ),
                Transform.translate(
                  offset: Offset.fromDirection(getRadianFromDegree(90)),
                  child: CircularButton(
                      Color.fromARGB(255, 54, 181, 244),
                      60,
                      60,
                      Icon(
                        Icons.music_video,
                        color: Colors.white,
                      )),
                ),
                CircularButton(
                    Color.fromARGB(255, 98, 244, 54),
                    60,
                    60,
                    Icon(
                      Icons.queue_music_outlined,
                      color: Colors.white,
                    )),

                //  CircularButton(color:Colors.red, width:60, height:60, icon: Icon(Icons.music_note), onClick:(){}),
                /* CircularButton(
                color:Colors.red,
                 width:60, 
                 height:60, 
                 icon: Icon(Icons.music_note), 
                 onClick:(){

                 }
              )*/
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class CircularButton extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Icon icon;
  //final Function onClick;

  CircularButton(this.color, this.width, this.height, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      width: width,
      height: height,
      child: IconButton(icon: icon, enableFeedback: true, onPressed: () {}),
    );
  }
}
