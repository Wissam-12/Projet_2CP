import 'package:flutter/material.dart';
import '../Screens/recetteCarte.dart';
import 'dart:io';

class RecetteModel{
    String? titre, description, duree;
    Color? coleur;
    String? image;
    List<String?>? ingredients;
    List<String?>? etapes;
    List<String?>? tags;
    RecetteModel({
        @required this.titre,
        @required this.description,
        @required this.duree,
        @required this.coleur,
        @required this.image,
        @required this.ingredients,
        @required this.etapes,
        @required this.tags,
    });
    
    static List<RecetteModel> demoRecette = [
        RecetteModel(
            titre: "Houmous aux légumes",
            description: "Avec ces variantes de houmous, on allège la proportion de pois chiches pas toujours faciles à digérer et on compense par des légumes et des épices. Ça colore, ça apporte des vitamines et ça se conserve plusieurs jours au réfrigérateur. Les enfants aimeront y tremper des bâtons de carottes ou des radis. Pour certains repas, comme un pique-nique entre copains, ça suffit grandement ! Sans gluten, végétarien, vegan, végétalien, sans lactose.",
            duree: "30 mins",
            coleur: Color(0xFFD9C8E1),
            image: 'images/recette1.jpg',
            ingredients: ["200 g de carotte cuite", "150 g de betterave cuite", "100 g de pois chiches", "4 c. à soupe d’huile d’olive", "3 c. à soupe de purée de sésame", "1 citron jaune", "1 pincée de cannelle", "1 pincée de curcuma en poudre", "Graines de sésame", "Ciboulette", "Sel et poivre"],
            etapes: ["La veille, faites tremper les pois chiches dans 4 fois leur volume d’eau.", "Rincez-les et faites-les cuire pendant 30 minutes. Conservez l’eau de cuisson.", "Mixez les pois chiches avec l’huile d’olive, le jus du citron, la purée de sésame et un peu d’eau de cuisson pour obtenir une consistance bien crémeuse. Salez et poivrez.", " Réservez un tiers du houmous au frais. Divisez ce qui reste en deux parts égales.", "Mixez la première moitié avec la betterave et la cannelle.", "Mixez la seconde moitié avec la carotte et le curcuma.", "Servez en saupoudrant de graines de sésame et de ciboulette pour les amateurs."],
            tags: ["All"],
        ),
        RecetteModel(
            titre: "Blinis à la vanille",
            description: "Le anko est une préparation sucrée originaire du Japon réalisée à base d’azukis : des haricots rouges naturellement sucrés. Au pays du Soleil-Levant, elle est fourrée dans des gâteaux en forme de poisson, les taiyaki. Nous proposons de l’utiliser pour garnir des blinis moelleux parfumés à la vanille et proposer ainsi un dessert ou un goûter étonnant et savoureux à souhait, riche en protéines végétales.",
            duree: "65 - 75 mins",
            coleur: Color(0xFFC6F8C6),
            image:  'images/recette2.jpg',
            ingredients: ["200 g de farine", "15 cl de lait de riz", "2 gros oeufs", "1 yaourt à la vanille", "1 sachet de poudre à lever", "1 pincée de sel", "100 g de haricots rouges azukis", "3 c. à soupe bombées de sucre glace", "1 pincée de graines d’anis"],
            etapes: ["Préparez la pâte de haricots rouges : faites tremper les haricots dans 4 fois leur volume d’eau pendant une nuit.", "Jetez l’eau de trempage. Placez les haricots dans une casserole munie d’un couvercle hermétique. Couvrez d’eau et portez à ébullition. Une fois que l’eau bout, baissez le feu, posez le couvercle et laissez cuire à feu doux pendant 45 minutes. Ajoutez le sucre glace et l’anis, donnez quelques tours de cuillères en bois. Refermez le couvercle et laissez reposer 15 minutes. Mélangez de nouveau. Les haricots s’écrasent et se lient avec le jus épaissi au cours de la cuisson.", "Pour les blinis, fouettez les oeufs dans un saladier. Ajoutez le yaourt et le lait. Incorporez la farine, la poudre à lever et le sel. Laissez reposer 1 heure.", "Faites cuire les blinis dans une poêle spécifi que pendant 4 minutes de chaque côté.", "Servez les blinis avec la pâte de haricots rouges que chacun pourra étaler à sa guise ou confectionnez des sandwichs moelleux."],
            tags: ["All", "Desserts"],
        ),
        RecetteModel(
            titre: "boulettes panées",
            description: "Il peut être très pratique de terminer les restes de la veille, mais ils ne sont pas toujours très appétissants. S’il vous reste des légumes cuits, voici une recette très rapide à préparer… et qui donne envie ! Il suffit de mélanger les légumes et la chapelure avant de réaliser les boulettes (organisez un atelier en famille) et de les placer au four. Proposez-les en salade avec une sauce généreuse. Ni vu ni connu, voilà une nouvelle recette réalisée !",
            duree: "20 - 25 mins",
            coleur: Color(0xFFC6F8C6),
            image:  'images/recette3.jpg',
            ingredients: ["1 bol de reste de légumes cuits", "1 salade (ici, trévise rouge)", "1 verre de chapelure préparée avec un quignon de pain ou 4_biscottes", "1 c. à café de curry", "Quelques brins de persil", "Sel et poivre", "130 g de roquefort", "1 verre de lait de soja", "1 c. à soupe de crème"],
            etapes: ["Préchauffez le four à 150 °C.", "Réduisez en purée les légumes cuits avec le curry. Salez et poivrez si nécessaire. » Ajoutez la chapelure et mélangez. Ajustez la quantité de chapelure pour obtenir une texture qui vous permettra de façonner les boulettes.", "Prélevez l’équivalent d’une cuillerée à soupe du mélange et façonnez les boulettes en roulant dans le creux de la main. Humidifiez vos mains pour faciliter l’opération.", "Placez les boulettes sur une plaque recouverte de papier cuisson. Enfournez pour 20 à 25 minutes. Tournez les boulettes en cours de cuisson.", "Préparez la sauce en écrasant le roquefort à la fourchette dans le lait et la crème. » Lavez la salade et le persil. Émincez-les.", "Servez les boulettes sur un lit de salade. Arrosez généreusement de sauce et parsemez de persil."],
            tags: ["All", "Plats Chauds"],
        ),
        RecetteModel(
            titre: "Crème dessert",
            description: "L’appétence pour le gras est indiscutable. Alors, profitons-en pour apporter de bonnes graisses dans les desserts, savoureuses et riches en nutriments. Avocat et noix de coco font partie des bons amis dont on peut abuser.",
            duree: "20 - 25 mins",
            coleur: Color(0xFFC6F8C6),
            image:  'images/recette4.jpg',
            ingredients: ["2 bananes", "2 avocats", "250 g de crème coco pour la cuisine", "4 c. à soupe de sucre glace", "Le jus d’un citron vert", "De la noix de coco en poudre."],
            etapes: ["Prélevez la chair des avocats. Mixez-la fi nement avec la moitié du jus de citron, 125 g de crème coco pour la cuisine et 2 cuillerées à soupe de sucre glace. Versez au fond de 4 pots en verre.", "Épluchez les bananes. Mixez la chair avec le reste de jus de citron, de crème coco et de sucre glace. Répartissez sur la purée d’avocats.", "Saupoudrez de poudre de noix de coco au moment de servir."],
            tags: ["All", "Desserts"],
        ),
        RecetteModel(
            titre: "Crème chocolatée",
            description: "Une petite crème riche en protéines pour la croissance de nos têtes blondes. L’amarante est une plante originaire d’Amérique latine riche en acides aminés et en minéraux (fer). Cette crème chocolatée sera bienvenue aussi bien en dessert, qu’au goûter ou au petit déjeuner.",
            duree: "30 mins",
            coleur: Color(0xFFC6F8C6),
            image:  'images/recette5.jpg',
            ingredients: ["100 g d’amarante", "100 g de chocolat noir", "15 cl de lait végétal à l’amande", "4 c. à soupe de sucre", "3 gousses de cardamome"],
            etapes: ["Ouvrez les gousses de cardamome et retirez les graines.", "Rincez soigneusement l’amarante dans une passoire fine. Faites-la cuire à feu doux dans une casserole avec 20 cl d’eau, le lait d’amande, la cardamome et le sucre. Comptez environ 30 minutes de cuisson. Mélangez de temps en temps.", "Avant la fin de cuisson, faites fondre le chocolat au bain-marie.", "Dès que l’amarante est cuite, ajoutez le chocolat fondu. Mélangez et versez dans des ramequins.", "Laissez refroidir, puis placez au frais. Ces crèmes se conservent quelques jours."],
            tags: ["All", "Desserts"],
        ),
        RecetteModel(
            titre: "Soupe veloutée",
            description: "Une petite crème riche en protéines pour la croissance de nos têtes blondes. L’amarante est une plante originaire d’Amérique latine riche en acides aminés et en minéraux (fer). Cette crème chocolatée sera bienvenue aussi bien en dessert, qu’au goûter ou au petit déjeuner.",
            duree: "40 mins",
            coleur: Color(0xFFC6F8C6),
            image:  'images/recette6.jpg',
            ingredients: ["250 g d’épinards", "100 g de pois cassés", "1 poireau", "1 gousse d’ail", "2 c. à soupe d’huile d’olive", "1 c. à soupe de levure de bière", "1 cube de bouillon de volaille", "Crème fraîche liquide ou crème végétale", "Sel et poivre", "1 fève"],
            etapes: ["Plongez les pois cassés préalablement rincés et le cube de bouillon dans 1,3 litre d’eau. Portez à ébullition, puis baissez le feu et laissez cuire à feu moyen pendant 20 minutes. Écumez au fur et à mesure.", "Pendant ce temps, lavez et émincez le poireau. Lavez les épinards. Émincez une gousse d’ail dégermée.", "Faites revenir l’ail émincé dans l’huile d’olive pendant 1 minute dans une casserole. Ajoutez le poireau et les épinards. Couvrez et laissez fondre pendant 4 à 5 minutes à feu doux.", "Versez les pois cassés et leur eau de cuisson sur les légumes et poursuivez la cuisson pendant 10 minutes.", "Salez et poivrez. Ajoutez la levure de bière avant de mixer en velouté.", "Au moment de servir, ajoutez une fève dans les assiettes et décorez d’un fi let de crème."],
            tags: ["All", "Plats Chauds"],
        ),
        RecetteModel(
            titre: "Croissants salés",
            description: "Les petits croissants, ça marche à tous les coups. On mange avec les doigts, c’est croustillant et on peut choisir sa garniture. Pour éviter le sempiternel jambon-fromage, à vous d’être inventif. Par exemple, jambon-pesto, aubergine- fromage de chèvre ou, pourquoi pas, épinards-mimolette. On peut rêver, non ?",
            duree: "20 - 25 mins",
            coleur: Color(0xFFC6F8C6),
            image:  'images/recette7.jpg',
            ingredients: ["1 pâte feuilletée", "30g de fromage de chèvre plutôt frais", "2 figues", "1 jaune d’oeuf", "2 c. à soupe d’huile d’olive", "1 c. à soupe de pesto", "Quelques pincées de thym séché"],
            etapes: ["Préchauffez le four à 180 °C.", "Dans un bol, mélangez le fromage avec le pesto, une pincée de thym et l’huile d’olive.", "Lavez les figues et coupez-les en rondelles fines.", "Coupez la pâte feuilletée en 10 triangles."],
            tags: ["All", "Desserts"],
        ),
        RecetteModel(
            titre: "Poisson pané",
            description: "Votre enfant est au courant que les poissons font partie de la famille des vertébrés, qu’ils nagent dans les mers et les lacs et qu’ils ne sont pas carrés ? Alors, lâchez-vous sur les poissons panés, mais soyez intransigeant sur le choix de votre poisson. Nous avons choisi du mulet, car ce n’est pas une espèce protégée.",
            duree: "10 mins",
            coleur: Color(0xFFC6F8C6),
            image:  'images/recette8.jpg',
            ingredients: ["500 g filet de mulet", "2 verres de chapelure", "1 œuf", "2 citrons jaunes", "2 c. à soupe de persil déshydraté", "2 c. à café d’écorce de citron en poudre", "Sel", "poivre", "Huile d’olive", "Farine"],
            etapes: [],
            tags: ["All", "Desserts"],
        ),
    ];

    static Widget afficher(String tag) {
        return ListView(
            scrollDirection: Axis.vertical,
            children: List<Widget>.generate((RecetteModel.shown(tag).length ~/ 2) + 1, (int index){
                List< RecetteModel> lsNeeded = RecetteModel.shown(tag);
                return Container(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                        children: List<Widget?>.generate(2, (int ind){
                            if( (index*2 + ind) < lsNeeded.length ){
                                return RecetteCarte(lsNeeded[index*2 + ind]);
                            }
                        }).whereType<Widget>().toList(),
                    ),
                );
            }),
        );
    }

    static List< RecetteModel> shown(String tag){
        return List< RecetteModel?>.generate(demoRecette.length, (int index){
            if( (demoRecette[index].tags)!.contains(tag) ){
                return demoRecette[index];
            }
        }).whereType< RecetteModel>().toList();
    }
    
}