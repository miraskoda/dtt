import 'package:dio/dio.dart';
import 'package:dtt/api/models/house.dart';

class ApiClient {
  ApiClient(this.dio);
  final Dio dio;

  Future<List<House>> getHouses() async {
    final result = [
      {
        'id': 2,
        'image': '/uploads/house1.jpg',
        'price': 285000,
        'bedrooms': 5,
        'bathrooms': 3,
        'size': 275,
        'description':
            'Prachtige monumentale, vrijstaande dijkwoning gelegen aan de geliefde Buiksloterdijk in Amsterdam Noord. De woning, welke al sinds ca. 1969 wordt bewoond door de huidige eigenaren, is voorzien van 3 slaapkamers, een ruime woonkamer op de begane grond en benedendijks van een ruime woonkeuken met aangrenzend de zitkamer en badkamer(2016). Het pand is altijd met veel zorg onderhouden. De buitenzijde is betimmerd met het inmiddels zeldzame Redwood hout en in ca. 1980 zijn de funderingsmuren opnieuw opgemetseld. In de goed onderhouden tuin is er altijd wel een zonnige plek te vinden. Zowel de voor als de achterzijde kijken uit over het water.',
        'zip': '1034 ZH',
        'city': 'Amsterdam',
        'latitude': 52,
        'longitude': 5,
        'createdDate': '2020-05-07',
      },
      {
        'id': 3,
        'image': '/uploads/house2.jpg',
        'price': 969000,
        'bedrooms': 3,
        'bathrooms': 1,
        'size': 153,
        'description':
            "Dit bijzondere appartement is gelegen op de bel-etage en in het souterrain van een Rijks monumentaal grachten pand ter hoogte van de 'Negen-straatje'. Deze woning kenmerkt zich door de vele originele details die behouden zijn. Bij de renovatie is met de grootste aandacht zorg gedragen voor het conserveren van de oorspronkelijke stijlelementen. Met name in de monumentale stijlkamer aan de voorzijde van de woning. Terwijl de keuken dan weer modern en state of the art is.",
        'zip': '1016 BV',
        'city': 'Amsterdam',
        'latitude': 52,
        'longitude': 5,
        'createdDate': '2020-05-07',
      },
      {
        'id': 4,
        'image': '/uploads/house3.jpg',
        'price': 795000,
        'bedrooms': 3,
        'bathrooms': 1,
        'size': 153,
        'description':
            'Heerlijk licht en groot bovenhuis van 153 m² met eigen opgang. Het karakteristieke pand uit 1886 staat op EIGEN GROND en ligt in de populaire Oosterparkbuurt. De woning ligt op een steenworp afstand van het mooie Oosterpark en de Dappermarkt. Alle denkbare voorzieningen vindt u in de buurt. Zeer goed bereikbaar met zowel de auto als het openbaar vervoer en op loopafstand van het NS station Muiderpoort.',
        'zip': '1092 CK',
        'city': 'Amsterdam',
        'latitude': 52,
        'longitude': 5,
        'createdDate': '2020-05-07',
      },
      {
        'id': 5,
        'image': '/uploads/house4.jpg',
        'price': 1500000,
        'bedrooms': 5,
        'bathrooms': 2,
        'size': 160,
        'description':
            'Op een top locatie in Oud-Zuid ligt dit zojuist hoogwaardige gerenoveerde dubbel bovenhuis van 160 m² (NEN-meting) met eigen opgang vanaf de straat en met ruim dakterras en nieuwe fundering.',
        'zip': '1071 EV',
        'city': 'Amsterdam',
        'latitude': 51,
        'longitude': 4,
        'createdDate': '2020-05-07',
      },
      {
        'id': 6,
        'image': '/uploads/house5.jpg',
        'price': 725000,
        'bedrooms': 6,
        'bathrooms': 3,
        'size': 157,
        'description':
            'Op een prachtige locatie in het buitengebied van Amsterdam hebben wij onlangs dit vrijstaande woonhuis in de verkoop gekregen. De woning is gelegen op maar liefst 570 m2 eigen grond en heeft een rondom gelegen prachtig aangelegde tuin met diverse terrassen waarvan een aan het water is gelegen. Genoeg over het buitenleven, je bent vast nieuwsgierig naar wat het binnenshuis voor jou in petto heeft!',
        'zip': '1067 TV',
        'city': 'Amsterdam',
        'latitude': 52,
        'longitude': 5,
        'createdDate': '2020-05-07',
      },
      {
        'id': 7,
        'image': '/uploads/house6.jpg',
        'price': 645000,
        'bedrooms': 3,
        'bathrooms': 1,
        'size': 95,
        'description':
            'Midden in het centrum van Amsterdam ligt, met uitzicht op het Oosterdok en het Centraal Stationsgebied, dit monumentale appartementencomplex, OP EIGEN GROND!',
        'zip': '1012 AE',
        'city': 'Amsterdam',
        'latitude': 52,
        'longitude': 5,
        'createdDate': '2020-05-07',
      },
      {
        'id': 8,
        'image': '/uploads/house7.jpg',
        'price': 1175000,
        'bedrooms': 4,
        'bathrooms': 3,
        'size': 185,
        'description':
            'Thans mogen we aanbieden, een riante benedenwoning op EIGEN GROND met een wel zeer royale woonkamer! Een parel met vrij uitzicht over het achterliggende Amsterdamse Bos.',
        'zip': '1081 JP',
        'city': 'Amsterdam',
        'latitude': 52,
        'longitude': 5,
        'createdDate': '2020-05-07',
      },
      {
        'id': 9,
        'image': '/uploads/house8.jpg',
        'price': 1300000,
        'bedrooms': 3,
        'bathrooms': 1,
        'size': 116,
        'description':
            'Op de derde en vierde (bovenste) etages van een historisch grachtenpand in het hart van de Jordaan, vindt u deze unieke en zeer ruime designwoning van 116 m2 met open karakter, twee grote slaapkamers en een balkon aan de achterzijde met uitkijk op de Westertoren. De woning kent een bijzonder luxe afwerking en is volledig onder interieur architectuur gerealiseerd in 2016. De woning is per direct bewoonbaar en wordt opgeleverd “as is” (rekeninghoudend met de roerende zakenlijst).',
        'zip': '1016 TS',
        'city': 'Amsterdam',
        'latitude': 52,
        'longitude': 5,
        'createdDate': '2020-05-07',
      },
      {
        'id': 10,
        'image': '/uploads/house9.jpg',
        'price': 475000,
        'bedrooms': 4,
        'bathrooms': 1,
        'size': 89,
        'description':
            'Op een werkelijk fenomenale plek midden in het centrum van Amsterdam ligt dit sfeervolle en lichte dubbele bovenhuis met 3 slaapkamers en een woonoppervlakte van bijna 90 m². Het appartement bevindt zich op eigen grond op de 6e en 7e (bovenste) etages van een traditioneel wijnpakhuis gelegen aan het rustige gedeelte van de Spuistraat.',
        'zip': '1012 TS',
        'city': 'Amsterdam',
        'latitude': 53,
        'longitude': 5,
        'createdDate': '2020-05-07',
      },
      {
        'id': 11,
        'image': '/uploads/house10.jpg',
        'price': 500000,
        'bedrooms': 3,
        'bathrooms': 1,
        'size': 97,
        'description':
            'De woning is gelegen in een Rijksmonument aan het begin van de Spuistraat net om de hoek bij het oude Kattegat en de Koepelkerk. De ligging van het pand is ideaal. Op loopafstand van het Centraal Station maar ook van o.a. de Kalverstraat en Nieuwendijk met een diversiteit aan winkels. En om de hoek treft u een supermarkt waar u terecht kunt voor de dagelijkse boodschappen.',
        'zip': '1012 TS',
        'city': 'Amsterdam',
        'latitude': 52,
        'longitude': 5,
        'createdDate': '2020-05-07',
      }
    ];

    final value = result.map((dynamic i) => House.fromJson(i as Map<String, dynamic>)).toList();
    return Future.value(value);
  }
}
