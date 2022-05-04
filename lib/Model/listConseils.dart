import 'package:flutter/material.dart';
import '../Screens/conseilCarte.dart';

class ConseilModel{
    String? titre, contenu;
    Color? coleur;
    ConseilModel({
        @required this.titre,
        @required this.contenu,
        @required this.coleur,
    });
    
    static List<ConseilModel> demoConseil = [
        ConseilModel(
            titre: 'Le bon exemple',
            contenu: 'Si maman lit le journal à table, les enfants ne voient pas pourquoi ils ne pourraient pas jouer pendant les repas. Si papa n\'apprécie pas le contenu de son assiette, le petit ne voit pas pourquoi lui devrait forcément aimer toute la nourriture qu\'on lui sert...Les enfants imitent les adultes et c\'est aux parents de montrer le bon exemple. Ceci est valable non seulement concernant la manière de se tenir à table et de manger, mais aussi pour les habitudes alimentaires. Mangez vous-même beaucoup de fruits et de légumes, buvez suffisamment d\'eau plate et de lait, et faites l\'impasse sur les sodas. Par mimétisme, les enfants seront enclins à faire de même.',
            coleur: Color(0xFFD9C8E1),
        ),
        ConseilModel(
            titre: 'La télé n\'est pas invitée',
            contenu: "A table, on mange, et on ne joue pas, on ne dessine pas et on ne regarde pas la télévision.Il ne faut cependant pas verser dans une attitude trop sévère. Le repas doit rester un moment convivial et agréable. Les instructions désuètes comme « un enfant ne parle pas à table » ou « tu dois d'abord finir toute ton assiette avant de quitter la table » n'auront pas d'effet, si ce n'est de créer une ambiance tendue, ce qui n'est pas le but recherché…",
            coleur: Color(0xFFC6F8C6),
        ),
        ConseilModel(
            titre: "Une jolie table",
            contenu: "Une table joliment dressée stimule l'appétit des petits et des grands. Prêtez une réelle attention aux couverts des enfants, pour qu'ils puissent s'en servir sans difficulté. Ne vous attendez pas à ce qu'un enfant en bas âge puisse se servir correctement d'un couteau et d'une fourchette. Proposez-leur des couverts adaptés à leur âge... et laissez-les s'en servir à leur guise, de manière spontanée, quitte à leur donner de temps en temps quelques conseils pour mieux les utiliser. Ne forcez pas, ne donnez pas d'ordres, n'élevez pas la voix : petit à petit, ils finiront par très bien s'en sortir.",
            coleur: Color(0xFFB6DCDD),
        ),
    ];

    static Widget afficher() {
        return Column(
            children: List<Widget>.generate(demoConseil.length, (int index){
                return ConseilCarte(demoConseil[index]);
            }),
        );
    }
}