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
            contenu: "Les enfants imitent les adultes et c'est aux parents de montrer le bon exemple. Ceci est valable à la manière de se tenir à table et de manger, mais aussi pour les habitudes alimentaires. Mangez vous-même de façon saine et équilibrée. Par mimétisme, les enfants seront enclins à faire de même.",
            coleur: Color(0xFFD9C8E1),
        ),
        ConseilModel(
            titre: 'La télé n\'est pas invitée',
            contenu: "A table, on mange principalement .Il ne faut cependant pas verser dans une attitude trop sévère. Le repas doit rester un moment convivial et agréable. Les instructions désuètes comme « un enfant ne parle pas à table » ou « tu dois d'abord finir toute ton assiette avant de quitter la table »  créeront une ambiance tendue, ce qui n'est pas le but recherché…",
            coleur: Color(0xFFC6F8C6),
        ),
        ConseilModel(
            titre: "Une jolie table",
            contenu: "Une table joliment dressée stimule l'appétit des petits et des grands. Proposez-leur de jolis couverts adaptés à leur âge... et laissez-les s'en servir à leur guise, de manière spontanée, quitte à leur donner de temps en temps quelques conseils pour mieux les utiliser. Soyez patients et indulgents: petit à petit, ils finiront par très bien s'en sortir.",
            coleur: Color(0xFFB6DCDD),
        ),
        ConseilModel(
            titre: "A heure fixe",
            contenu: "Manger à heure fixe, et si possible au même endroit, est un repère important pour l'enfant. Il a besoin de régularité et de rituels..Mangez de préférence en famille. L'enfant apprécie ces moments de convivialité, et il comprendra aussi que l'on mange à certaines heures, ensemble, et que l'on ne grignote pas à longueur de journée dans son coin.",
            coleur: Color(0xFFD9C8E1),
        ),
        ConseilModel(
            titre: "C' est bientôt prêt !",
            contenu: "Appelez l'enfant lorsque le repas est quasiment prêt. Il pourra ainsi terminer à l'aise ce qu'il était occupé à faire, et se diriger tranquillement vers la table. Si vous prévenez trop tard, cela risque de générer de la tension et du stress. Tant chez l'enfant que chez l'adulte, et créer un climat malsain pendant le repas.",
            coleur: Color(0xFFC6F8C6),
        ),
        ConseilModel(
            titre: "A l'aise mais sans traîner",
            contenu: "Le repas en famille doit se dérouler tranquillement, sans précipitation, mais sans traîner en longueur et sans retenir trop longtemps les enfants à table. C'est un excellent moment pour évoquer les événements de la journée, tant ceux des enfants que des adultes, et s'intéresser aux activités des uns et des autres.",
            coleur: Color(0xFFB6DCDD),
        ),
        ConseilModel(
            titre: "Des portions raisonnables",
            contenu: "Il ne sert à rien de remplir l'assiette d'un enfant à ras bord. Commencez par une pomme de terre, puis une cuillerée de compote et un petit morceau de viande,et ainsi de suite. L'enfant est rebuté par une trop grande quantité, mais il acceptera plus facilement des petites portions l'une après l'autre. Les parents ont souvent tendance à confondre leur appétit avec celui de leur enfant…",
            coleur: Color(0xFFD9C8E1),
        ),
        ConseilModel(
            titre: "Positiver",
            contenu: "Il est important de positiver : si l'enfant apprécie une préparation, incitez-le à le dire et réjouissez-vous : « C'est vraiment bien que tu aimes ce que j'ai préparé. C'est très bien que tu aies bon appétit ». Les encouragements sont plus productifs que les critiques (« Encore une fois, tu n'as pas fini ton assiette ! »).",
            coleur: Color(0xFFC6F8C6),
        ),
        ConseilModel(
            titre: "La découverte du goût",
            contenu: "Une erreur fréquente consiste à forcer l'enfant à tout manger, même ce qu'il dit ne pas aimer. Or, les habitudes alimentaires portent bien leur nom : il faut s'y habituer, et ceci vaut en particulier pour un enfant qui part à la découverte des aliments.Il était nécessaire de lui présenter les aliments sous différentes formes et préparations pour qu’il s’y habitue.",
            coleur: Color(0xFFB6DCDD),
        ),
        ConseilModel(
            titre: "Ni récompense, ni punition",
            contenu: "Offrir une récompense parce que l'enfant a fini son assiette, ou au contraire le punir car il n'a pas voulu y toucher : ces deux attitudes sont des mauvaises idées.En effet, elles reviennent d'abord à considérer le repas comme une contrainte, une corvée (avec une punition à la clé) ou une épreuve difficile et ardue (qui mérite récompense). Ce qui n’est pas la vision idéale que l’on souhaiterait inculquer aux enfants.",
            coleur: Color(0xFFD9C8E1),
        ),
        ConseilModel(
            titre: "Le choix de l'enfant",
            contenu: "L'enfant ne doit pas composer le menu, mais il peut donner son avis sur les quantités. Il aura ainsi l'impression positive de pouvoir influer sur le repas, qui ne lui sera donc plus imposé sans demander son avis. Il l'abordera dans un meilleur état d'esprit . Encourager un enfant à manger au-delà de ses besoins l’expose à un risque de perturbation des signaux internes de la faim et de la satiété et donc des troubles alimentaires.",
            coleur: Color(0xFFC6F8C6),
        ),
        ConseilModel(
            titre: "Repas : les jeunes enfants s’auto régulent",
            contenu: "Plus que l’adulte, le jeune enfant est capable d’auto-régulation. Lorsqu’il ne veut plus du contenu de son assiette : inutile d’insister. Cette capacité d’auto-régulation est innée .L’auto-régulation, nous l’aurions conservée, nous aussi, adultes, si la règle de finir son assiette par politesse n’avait pas remplacé nos capacités !",
            coleur: Color(0xFFB6DCDD),
        ),
        ConseilModel(
            titre: "Encourager l’expérimentation",
            contenu: "Le jeune enfant a besoin d’expérimentation pour que le repas soit un moment de plaisir : il aura tendance à mettre les mains dans l’assiette. Toucher, porter à la bouche. La double cuillère peut être proposée : une pour l’enfant qui apprend à faire seul, et une pour l’adulte.",
            coleur: Color(0xFFD9C8E1),
        ),
        ConseilModel(
            titre: "Faire participer l’enfant à la préparation du repas",
            contenu: "Rien de tel que de cuisiner pour avoir envie de goûter ce que l’on a soit même préparé ! Cuisiner, c’est aussi découvrir l’aliment dans sa forme brute : avant d’être épluché, coupé, voir la différence entre le cru et le cuit etc… Créer la discussion autour de l’aliment permet de créer de l’intérêt et de donner du sens à ce qui est consommé.",
            coleur: Color(0xFFC6F8C6),
        ),
        ConseilModel(
            titre: "Ce que votre enfant n’aime pas aujourd’hui : ce n’est pas définitif ! ",
            contenu: "Les goûts évoluent tout au long de la vie ! L’environnement est aussi important dans la définition des goûts : la découverte d’un aliment associé au souvenir de s’être fait gronder laissera forcément un mauvais à priori.",
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