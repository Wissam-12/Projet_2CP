import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import '../gestionSon.dart';
import '../google_sign_in.dart';
import 'home.dart';

class Profil extends StatefulWidget {
  Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  File? image;
  @override
  Widget build(BuildContext context) {
      final user = FirebaseAuth.instance.currentUser!;
      final uid = user.uid;

    return Scaffold(
      
        ///**************************************************************** */
        body: Container(
            color: Color.fromRGBO(235, 255, 219, 1),
            child: Stack(alignment: Alignment.topCenter, children: [
              CustomScrollView(
                slivers: [
                  SliverAppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 1,
                      //Color(0xFFEBFFDB),
                      automaticallyImplyLeading: false,
                      toolbarHeight: 90,
                      actions: [
                        Row(
                          children: [
                            Container(
                              //margin: EdgeInsets.only(right: 10),
                              child: CircleAvatar(
                                radius: 28,
                                child: IconButton(
                                    icon: Icon(
                                      Icons.group,
                                      color: Colors.white,
                                      size: 32,
                                    ),
                                    onPressed: () {
                                      gestionSfx();
                                      Navigator.pop(context);
                                    }),
                                backgroundColor: Color(0xffFFA450),
                              ),
                            ),
                            Container(
                                width: 120,
                                height: 57,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFA450),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                margin: EdgeInsets.only(right: 20, left: 20),
                                child: Row(
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(left: 6),
                                        child: CircleAvatar(
                                          radius: 22,
                                          backgroundColor: Color(0xFFFFF27D),
                                          child: CircleAvatar(
                                            radius: 14,
                                            backgroundColor: Color(0xFFFFF27D),
                                            backgroundImage:
                                                AssetImage("images/pom.png"),
                                          ),
                                        )),
                                    Container(
                                      margin: EdgeInsets.only(left: 20),
                                      child: Text(
                                        '124',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'Rubik-ExtraBold'),
                                      ),
                                    )
                                  ],
                                )),
                            CircleAvatar(
                              radius: 28,
                              child: Container(
                                child: IconButton(
                                    icon: Icon(
                                      Icons.settings,
                                      color: Colors.white,
                                      size: 32,
                                    ),
                                    onPressed: () {
                                      gestionSfx();
                                      showDialogFunc(context);
                                    }),
                              ),
                              backgroundColor: Color(0xffFFA450),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 8),
                              child: MaterialButton(
                                onPressed: () {
                                  gestionSfx();
                                },
                                height: 70,
                                shape: CircleBorder(),
                                child: CircleAvatar(
                                  radius: 28,
                                  backgroundColor: Color(0xffFFA450),
                                  child: CircleAvatar(
                                    radius: 21,
                                    backgroundColor: Color(0xFFFFF27D),
                                    backgroundImage:
                                        AssetImage("images/bag.png"),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]),
                ],
              ),
              //****************************************************** */

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 120,
                  ),
                  Container(
                      width: 285,
                      height: 64,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(255, 164, 80, 1),
                      ),
                child: Center(
                  child:Text(
                    'hi',
                      //((user.displayName!).split(' '))[0],
                    textAlign:TextAlign.center ,
                    style:TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Rubik',
                      fontSize: 32,
                    )),
                )
              ),
             SizedBox(height: 30,),
             
            
              Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: 150,
                      height:150,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 164, 80, 1),
                        borderRadius: BorderRadius.circular(75),
                      ),
                      child: ClipOval(
                        child: Material(
                          color: Colors.transparent,
                          child: image == null ? Image(
                            image: AssetImage("images/item.png",),
                            fit: BoxFit.cover,
                          ) : Image.file(
                            image!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ), 
                  ),
                  
                  Positioned(
                    top: 5,
                    right: 130,
                    child: ClipOval(
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 164, 80, 1),
                        ),
                        child: IconButton(
                          padding: EdgeInsets.all(3),
                          constraints: BoxConstraints(),
                          icon: CircleAvatar(
                            backgroundColor: Color(0xFFFFF27D),
                            child: Icon(
                              Icons.edit,
                              color: Color.fromRGBO(255, 164, 80, 1),
                              size: 22,
                            ),
                          ),
                          onPressed: (){
                            gestionSfx();
                            pickit(context, user);
                            // uploadPic(context);
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            SizedBox(height:19),
            
            Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  
                  child: Container(
                  height: 24,width:250 ,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 164, 80, 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(child:LinearProgressIndicator(
                    value: 0.5,
                    valueColor: new AlwaysStoppedAnimation(Colors.white),
                    backgroundColor: Color.fromRGBO(255, 164, 80, 1),
                    minHeight: 12,),),
            ),),
            Positioned(
              bottom:-19,left: -10,
              child: Container(
                padding: EdgeInsets.all(3),
                height:60,width:60 ,
                decoration: BoxDecoration(
                  color:Color.fromRGBO(255, 164, 80, 1),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  height: 57,width: 57,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFF27D),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image(
                    image: AssetImage('images/pom.png')
                  ),
                ),
                
              ),
            ),
          ],
          
            ),
            
             SizedBox(height:48),
             SizedBox(
               height: 64, width: 292,
               child: ElevatedButton(
                 onPressed: () {
                   gestionSfx();
                    //  uploadPic(context);
                 },
                 child:Row(children: [
                    SizedBox(width:(107-86)),
                    // Image(image: AssetImage('images/bxs_book-bookmark.png')), 
                    SizedBox(width: 16,),Text('Acquisition'),
                 ],),
                  style: ElevatedButton.styleFrom(
                    elevation: 100,
                    shadowColor: Color.fromRGBO(255, 164, 80, 1),
                    primary:Color.fromRGBO(255, 164, 80, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(20),
                    ),
                  ),
               ),),
                  SizedBox(height: 26),
                  SizedBox(
                    height: 64,
                    width: 292,
                    child: ElevatedButton(
                      onPressed: () {
                        gestionSfx();
                      },
                      child: Row(
                        children: [
                          SizedBox(width: (107 - 86)),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text('Classement'),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(255, 164, 80, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Rubik',
                            fontSize: 26,
                          )),
                    ),
                  ),
                  SizedBox(height: 26),
                  SizedBox(
                    height: 64,
                    width: 292,
                    child: ElevatedButton(
                      onPressed: () {
                        gestionSfx();
                        final provider = Provider.of<GoogleSignInProvider>(
                            context,
                            listen: false);
                        provider.logout();
                        Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return HomePage();
                            }));
                      },
                      child: Row(
                        children: [
                          SizedBox(width: (107 - 86)),
                          //   Image(image: AssetImage('images/ion_exit.png')),
                          SizedBox(
                            width: 16,
                          ),
                          Text('Déconnexion'),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(255, 164, 80, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Rubik',
                            fontSize: 26,
                          )),
                    ),
                  ),
                  SizedBox(height: 10),
                  Divider(
                    color: Color.fromRGBO(140, 180, 156, 1),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                      height: 28,
                      width: 178,
                      child: InkWell(
                        child: Text(
                          "Notre Site web",
                          style: TextStyle(
                            color: Color.fromRGBO(140, 180, 156, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            fontFamily: 'Rubik',
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ))
                ],
              )
            ])));
  }
  pickit(BuildContext context, User user) async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null)return;
    final imageTemporary = File(image.path);
    print(image.path);
    setState((){
      print(image.path);
      this.image = imageTemporary;
      //Scaffold.of(context).showSnackBar(SnackBar(content: Text('Profile picture uploaded')));
      //uploadPic(context, user);
   },);
  }

  Future <String> uploadPic (BuildContext context, User user) async {
      String fileName = basename(image!.path);
      Reference fireBaseStorage = FirebaseStorage.instance.ref().child("profile/${user.uid}");
      // Reference fireBaseStorage = FirebaseStorage.instance.ref().child(fileName);
      
      UploadTask uploadTask = fireBaseStorage.putFile(image!);
      TaskSnapshot taskSnapshot = await uploadTask;
      String downloadURL = await taskSnapshot.ref.getDownloadURL();
      setState((){
          Scaffold.of(context).showSnackBar(SnackBar(content: Text('Profile picture uploaded')));
      });
      return downloadURL;
  }
}