// import 'package:flutter/material.dart';
// import '../Model/listRecettes.dart';

// class DetailsRecette extends StatefulWidget {
//   final RecetteModel recette;
//   DetailsRecette(this.recette);

//   @override
//   State<DetailsRecette> createState() => _DetailsRecetteState();
// }

// class _DetailsRecetteState extends State<DetailsRecette> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFEBFFDB),
//       body: ListView(
//         children: [
//           Container(
//             height: 150,
//           ),
//           Center(
//               child: Text(
//             this.widget.recette.titre!,
//             textAlign: TextAlign.center,
//             style: TextStyle(
//                 color: Color(0xff3DB86E),
//                 fontFamily: 'Rubik',
//                 fontWeight: FontWeight.w900,
//                 fontSize: 42),
//           )),
//           Container(
//             padding: EdgeInsets.only(top: 50, bottom: 40),
//             margin: EdgeInsets.symmetric(horizontal: 62),
//             child: Image(
//               image: AssetImage(this.widget.recette.image!),
//             ),
//           ),
//           Center(
//             //padding: EdgeInsets.only(top: 20),
//             child: Text("Recette",
//                 style: TextStyle(
//                     fontFamily: 'Poppins', fontSize: 14, letterSpacing: 6)),
//           ),
//           Container(
//             margin: EdgeInsets.only(left: 30, top: 30, bottom: 10),
//             child: Text("Benefits of this recipe",
//                 style: TextStyle(
//                     fontFamily: 'Rubik',
//                     fontSize: 20,
//                     fontWeight: FontWeight.w500)),
//           ),
//           Container(
//               padding: EdgeInsets.only(left: 30, right: 30, bottom: 40),
//               child: Text(
//                 this.widget.recette.description!,
//                 style: TextStyle(
//                     fontFamily: 'Rubik',
//                     fontSize: 15,
//                     wordSpacing: 3),
//               )),
//           Container(
//             padding: EdgeInsets.only(left: 30, right: 30, bottom: 10),
//             child: Text("Ingrédients",
//                 style: TextStyle(
//                     fontFamily: 'Rubik',
//                     fontSize: 20,
//                     fontWeight: FontWeight.w500)),
//           ),
//           Container(
//             child: listIngredients(),
//           ),
//           Container(
//               margin: EdgeInsets.only(left: 30, top: 40),
//               child: Text("Steps",
//                   style: TextStyle(
//                       fontFamily: 'Rubik',
//                       fontSize: 20,
//                       fontWeight: FontWeight.w500))),
//           listEtapes(),
//           Container(
//             padding: EdgeInsets.only(bottom: 60),
//           ),
//           Container(child: Image(image: AssetImage('images/va.png'))),
//         ],
//       ),
//     );
//   }
//     listIngredients(){
//     return Align(
//         alignment: Alignment.topLeft,
//         child: Wrap(
//             spacing: 3.0,
//             runSpacing: 1,
//             alignment : WrapAlignment.start,
//             children: List<Widget>.generate((this.widget.recette.ingredients)!.length, (int index){
//               return Container(
//                 margin: EdgeInsets.only(left: 10, top: 10),
//                 padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
//                 decoration: BoxDecoration(
//                   color: Color(0xffD1F5CA),
//                   borderRadius: BorderRadius.circular(16),
//                 ),
//                 child: Text(
//                   ((this.widget.recette.ingredients)![index])!,
//                   style: TextStyle(
//                       fontFamily: 'Poppins',
//                       fontSize: 14,
//                       fontWeight: FontWeight.w500
//                     ),
//                 ),
//               );
//             }),
//         ),
//     );
//   }

//   listEtapes(){
//     return Column(
//       children: List<Widget>.generate((this.widget.recette.etapes)!.length, (int index){
//         return Container(
//           margin: EdgeInsets.only(right: 10),
//           child: ListTile(
//             title: Text(
//               (this.widget.recette.etapes)![index]!,
//               style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
//             ),
//             leading: Container(
//               padding: EdgeInsets.only(right: 15),
//               child: Icon(
//                 Icons.circle,
//                 size: 10,
//                 color: Color(0xffFF6F50),
//               ),
//             ),
//           ),
//         );
//       }),
//     );
//   }
// }
