import 'package:flutter/material.dart';

class Institution extends StatefulWidget {
  static const routeName = '/History';

  @override
  State<Institution> createState() => _InstitutionState();
}

class _InstitutionState extends State<Institution> {
  var Lan = 'gb';
  Object? args;

  @override
  Widget build(BuildContext context) {
    if (args == null) {
      args = ModalRoute.of(context)!.settings.arguments;
      Lan = args as String;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfffcfcfd),
        title: const Text(
          '''
 
European
Union
            ''',
          style: TextStyle(
            color: Color(0xff333333),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.clear),
            iconSize: 30,
            onPressed: () {
              Navigator.of(context).pop(Lan);
            },
          ),
        ],
        elevation: 10,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/eu.png'),
                const SizedBox(height: 50),
                SizedBox(
                    child:
                    (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Basic Information', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),):
                    (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de'|| Lan == 'at')? const Text('Grundinformation', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),):
                    (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Informations de base', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),):
                    (Lan == 'lu')? const Text('Grondinformatioun', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),):
                    (Lan == 'it'||Lan == 'ch it')? const Text('Informazioni di base', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),):
                    (Lan == 'nl'|| Lan == 'be nl')? const Text('Basisinformatie', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),):
                    (Lan == 'dk')? const Text('Grundlæggende information', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),):
                    (Lan == 'gr'|| Lan == 'cy gr')? const Text('Βασικές πληροφορίες', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),):
                    (Lan == 'es')? const Text('Información básica', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),):
                    (Lan == 'pt')? const Text('Informações básicas', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),):
                    (Lan == 'se')? const Text('Grundläggande information', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),):
                    (Lan == 'fi')? const Text('Perustiedot', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),):
                    (Lan == 'ee')? const Text('Põhiinformatsioon', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),):
                    (Lan == 'lv')? const Text('Pamatinformācija', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),):
                    (Lan == 'lt')? const Text('Pagrindinė informacija', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),):
                    (Lan == 'pl')? const Text('Podstawowe informacje', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),):
                    (Lan == 'cz')? const Text('Základní informace', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),):
                    (Lan == 'sk')? const Text('Základné informácie', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),):
                    (Lan == 'hu')? const Text('Alapinformációk', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),):
                    (Lan == 'si')? const Text('Osnovne informacije', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),):
                    (Lan == 'mt')? const Text('Informazzjoni Bażika', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),):
                    (Lan == 'bg')? const Text('Основна информация', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),):
                    (Lan == 'ro')? const Text('Informații de bază', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),):
                    (Lan == 'hr')? const Text('Osnovne informacije', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),):
                    (Lan == 'no')? const Text('Grunnleggende informasjon', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),):
                    (Lan == 'ru')? const Text('Основная информация', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),):
                    (Lan == 'ua')? const Text('Основна інформація', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),):
                    const Text('基本情報', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),),
                ),
                const SizedBox(height: 50,),
                SizedBox(
                  child:
                  (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('How does it work?', style: TextStyle(
                    fontSize: 30, color: Color(0xff333333),),):
                  (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de'|| Lan == 'at')? const Text('Wie funktioniert es?', style: TextStyle(
                    fontSize: 30, color: Color(0xff333333),),):
                  (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Comment cela fonctionne-t-il?', style: TextStyle(
                    fontSize: 30, color: Color(0xff333333),),):
                  (Lan == 'lu')? const Text('Wéi funktionéiert et?', style: TextStyle(
                    fontSize: 30, color: Color(0xff333333),),):
                  (Lan == 'it'||Lan == 'ch it')? const Text('Come funziona?', style: TextStyle(
                    fontSize: 30, color: Color(0xff333333),),):
                  (Lan == 'nl'|| Lan == 'be nl')? const Text('Hoe werkt het?', style: TextStyle(
                    fontSize: 30, color: Color(0xff333333),),):
                  (Lan == 'dk')? const Text('Hvordan virker det?', style: TextStyle(
                    fontSize: 30, color: Color(0xff333333),),):
                  (Lan == 'gr'|| Lan == 'cy gr')? const Text('Πώς λειτουργεί αυτό;', style: TextStyle(
                    fontSize: 30, color: Color(0xff333333),),):
                  (Lan == 'es')? const Text('¿Cómo funciona?', style: TextStyle(
                    fontSize: 30, color: Color(0xff333333),),):
                  (Lan == 'pt')? const Text('Como funciona isso?', style: TextStyle(
                    fontSize: 30, color: Color(0xff333333),),):
                  (Lan == 'se')? const Text('Hur fungerar det?', style: TextStyle(
                    fontSize: 30, color: Color(0xff333333),),):
                  (Lan == 'fi')? const Text('Miten se toimii?', style: TextStyle(
                    fontSize: 30, color: Color(0xff333333),),):
                  (Lan == 'ee')? const Text('Kuidas see toimib?', style: TextStyle(
                    fontSize: 30, color: Color(0xff333333),),):
                  (Lan == 'lv')? const Text('Kā tas darbojas?', style: TextStyle(
                    fontSize: 30, color: Color(0xff333333),),):
                  (Lan == 'lt')? const Text('Kaip tai veikia?', style: TextStyle(
                    fontSize: 30, color: Color(0xff333333),),):
                  (Lan == 'pl')? const Text('Jak to działa?', style: TextStyle(
                    fontSize: 30, color: Color(0xff333333),),):
                  (Lan == 'cz')? const Text('Jak to funguje?', style: TextStyle(
                    fontSize: 30, color: Color(0xff333333),),):
                  (Lan == 'sk')? const Text('Ako to funguje?', style: TextStyle(
                    fontSize: 30, color: Color(0xff333333),),):
                  (Lan == 'hu')? const Text('Hogyan működik?', style: TextStyle(
                    fontSize: 30, color: Color(0xff333333),),):
                  (Lan == 'si')? const Text('Kako deluje?', style: TextStyle(
                    fontSize: 30, color: Color(0xff333333),),):
                  (Lan == 'mt')? const Text('Kif jaħdem dan?', style: TextStyle(
                    fontSize: 30, color: Color(0xff333333),),):
                  (Lan == 'bg')? const Text('Как работи това?', style: TextStyle(
                    fontSize: 30, color: Color(0xff333333),),):
                  (Lan == 'ro')? const Text('Cum funcționează?', style: TextStyle(
                    fontSize: 30, color: Color(0xff333333),),):
                  (Lan == 'hr')? const Text('Kako to radi?', style: TextStyle(
                    fontSize: 30, color: Color(0xff333333),),):
                  (Lan == 'no')? const Text('Hvordan fungerer det?', style: TextStyle(
                    fontSize: 30, color: Color(0xff333333),),):
                  (Lan == 'ru')? const Text('Как это работает?', style: TextStyle(
                    fontSize: 30, color: Color(0xff333333),),):
                  (Lan == 'ua')? const Text('Як це працює?', style: TextStyle(
                    fontSize: 30, color: Color(0xff333333),),):
                  const Text('どのように機能しているのか?', style: TextStyle(
                    fontSize: 30, color: Color(0xff333333),),)
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: Material(
                      color: const Color(0xffEBEDF1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                              child:
                              (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('European Parliament', style: TextStyle(
                                fontSize: 30, color: Color(0xff001489),),):
                              (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de'|| Lan == 'at')? const Text('Europäisches Parlament', style: TextStyle(
                                fontSize: 30, color: Color(0xff001489),),):
                              (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Parlement européen', style: TextStyle(
                                fontSize: 30, color: Color(0xff001489),),):
                              (Lan == 'lu')? const Text('Europäescht Parlament', style: TextStyle(
                                fontSize: 30, color: Color(0xff001489),),):
                              (Lan == 'it'||Lan == 'ch it')? const Text('Parlamento europeo', style: TextStyle(
                                fontSize: 30, color: Color(0xff001489),),):
                              (Lan == 'nl'|| Lan == 'be nl')? const Text('Europees Parlement', style: TextStyle(
                                fontSize: 30, color: Color(0xff001489),),):
                              (Lan == 'dk')? const Text('Europæisk Parlament', style: TextStyle(
                                fontSize: 30, color: Color(0xff001489),),):
                              (Lan == 'gr'|| Lan == 'cy gr')? const Text('Ευρωπαϊκό Κοινοβούλιο', style: TextStyle(
                                fontSize: 30, color: Color(0xff001489),),):
                              (Lan == 'es')? const Text('Parlamento Europeo', style: TextStyle(
                                fontSize: 30, color: Color(0xff001489),),):
                              (Lan == 'pt')? const Text('Parlamento Europeu', style: TextStyle(
                                fontSize: 30, color: Color(0xff001489),),):
                              (Lan == 'se')? const Text('Europeiska parlamentet', style: TextStyle(
                                fontSize: 30, color: Color(0xff001489),),):
                              (Lan == 'fi')? const Text('Euroopan parlamentti', style: TextStyle(
                                fontSize: 30, color: Color(0xff001489),),):
                              (Lan == 'ee')? const Text('Euroopa Parlament', style: TextStyle(
                                fontSize: 30, color: Color(0xff001489),),):
                              (Lan == 'lv')? const Text('Eiropas Parlaments', style: TextStyle(
                                fontSize: 30, color: Color(0xff001489),),):
                              (Lan == 'lt')? const Text('Europos Parlamentas', style: TextStyle(
                                fontSize: 30, color: Color(0xff001489),),):
                              (Lan == 'pl')? const Text('Parlament Europejski', style: TextStyle(
                                fontSize: 30, color: Color(0xff001489),),):
                              (Lan == 'cz')? const Text('Evropský parlament', style: TextStyle(
                                fontSize: 30, color: Color(0xff001489),),):
                              (Lan == 'sk')? const Text('Európsky parlament', style: TextStyle(
                                fontSize: 30, color: Color(0xff001489),),):
                              (Lan == 'hu')? const Text('Európai Parlament', style: TextStyle(
                                fontSize: 30, color: Color(0xff001489),),):
                              (Lan == 'si')? const Text('Evropski parlament', style: TextStyle(
                                fontSize: 30, color: Color(0xff001489),),):
                              (Lan == 'mt')? const Text('Parlament Ewropew', style: TextStyle(
                                fontSize: 30, color: Color(0xff001489),),):
                              (Lan == 'bg')? const Text('Европейски парламент', style: TextStyle(
                                fontSize: 30, color: Color(0xff001489),),):
                              (Lan == 'ro')? const Text('Parlamentul European', style: TextStyle(
                                fontSize: 30, color: Color(0xff001489),),):
                              (Lan == 'hr')? const Text('Europski parlament', style: TextStyle(
                                fontSize: 30, color: Color(0xff001489),),):
                              (Lan == 'no')? const Text('Europaparlamentet', style: TextStyle(
                                fontSize: 30, color: Color(0xff001489),),):
                              (Lan == 'ru')? const Text('Европейский парламент', style: TextStyle(
                                fontSize: 30, color: Color(0xff001489),),):
                              (Lan == 'ua')? const Text('Європейський парламент', style: TextStyle(
                                fontSize: 30, color: Color(0xff001489),),):
                              const Text('欧州議会', style: TextStyle(
                                fontSize: 30, color: Color(0xff001489),),)
                          ),
                          const Divider(
                            height: 3,
                            thickness: 1,
                            indent: 20,
                            endIndent: 20,
                            color: Color(0xff001489),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text('EUの主な機関の一つであり、本会議はストラスブールに置かれています。本会議では、各委員会で討議された法案等についての報告書が審議されるほか、国際情勢等も討議され、決議・勧告等が採択されます。欧州議会は比例代表制ですが、政党だけでなく候補者も選べる非拘束式の国が多数です。5年ごとに選挙を行い、各国の住民に比例し751議員が在職しています。'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
          ),
        ),
      ),
    );
  }
}