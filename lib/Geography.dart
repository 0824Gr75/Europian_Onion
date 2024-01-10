import 'package:flutter/material.dart';

class Geography extends StatefulWidget {
  static const routeName = '/Geography';

  @override
  State<Geography> createState() => _GeographyState();
}

class _GeographyState extends State<Geography> {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox.fromSize(
                  size: const Size(170, 170),
                  child: Material(
                    color: const Color(0xffEBEDF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: InkWell(
                      splashColor: const Color(0xffC9D8F6),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child:
                            (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Germany',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de'|| Lan == 'at')? const Text('Deutschland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Allemagne',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lu')? const Text('Däitschland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'it'||Lan == 'ch it')? const Text('Germania',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'nl'|| Lan == 'be nl')? const Text('Duitsland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'dk')? const Text('Tyskland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'gr'|| Lan == 'cy gr')? const Text('Γερμανία',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'es')? const Text('Alemania',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pt')? const Text('Alemanha',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'se')? const Text('Tyskland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fi')? const Text('Saksa',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ee')? const Text('Saksamaa',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lv')? const Text('Vācija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lt')? const Text('Vokietija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pl')? const Text('Niemcy',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'cz')? const Text('Německo',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'sk')? const Text('Nemecko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hu')? const Text('Németország',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'si')? const Text('Nemčija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'mt')? const Text('Ġermanja',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'bg')? const Text('Германия',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ro')? const Text('Germania',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hr')? const Text('Njemačka',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'no')? const Text('Tyskland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ru')? const Text('Германия',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ua')? const Text('Німеччина',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            const Text('ドイツ',style: TextStyle(fontSize: 26, color: Color(0xff001489),),)
                          ),
                          SizedBox(
                            height: 45,
                              child: Image.asset('assets/ct/de.png')
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox.fromSize(
                  size: const Size(170, 170),
                  child: Material(
                    color: const Color(0xffEBEDF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: InkWell(
                      splashColor: const Color(0xffC9D8F6),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('France',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de')? const Text('Frankreich',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('France',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lu')? const Text('Frankräich',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'it'||Lan == 'ch it')? const Text('Francia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'nl'|| Lan == 'be nl')? const Text('Frankrijk',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'dk')? const Text('Frankrig',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'gr'|| Lan == 'cy gr')? const Text('Γαλλία',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'es')? const Text('Francia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pt')? const Text('França',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'at')? const Text('Frankreich',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'se')? const Text('Frankrike',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fi')? const Text('Ranska',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ee')? const Text('Prantsusmaa',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lv')? const Text('Francija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lt')? const Text('Prancūzija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pl')? const Text('Francja',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'cz')? const Text('Francie',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'sk')? const Text('Francúzsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hu')? const Text('Franciaország',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'si')? const Text('Francija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'mt')? const Text('Franza',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'bg')? const Text('Франция',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ro')? const Text('Franța',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hr')? const Text('Francuska',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'no')? const Text('Frankrike',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ru')? const Text('Франция',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ua')? const Text('Франція',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            const Text('フランス',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                          ),
                          SizedBox(
                              height: 45,
                              child: Image.asset('assets/ct/fr.png')
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox.fromSize(
                  size: const Size(170, 170),
                  child: Material(
                    color: const Color(0xffEBEDF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: InkWell(
                      splashColor: const Color(0xffC9D8F6),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Belgium',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de')? const Text('Belgien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Belgique',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lu')? const Text('Belsch',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'it'||Lan == 'ch it')? const Text('Belgio',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'nl'|| Lan == 'be nl')? const Text('België',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'dk')? const Text('Belgien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'gr'|| Lan == 'cy gr')? const Text('Βέλγιο',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'es')? const Text('Bélgica',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pt')? const Text('Bélgica',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'at')? const Text('Belgien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'se')? const Text('Belgien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fi')? const Text('Belgia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ee')? const Text('Belgia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lv')? const Text('Beļģija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lt')? const Text('Belgija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pl')? const Text('Belgia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'cz')? const Text('Belgie',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'sk')? const Text('Belgicko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hu')? const Text('Belgium',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'si')? const Text('Belgija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'mt')? const Text('Belġju',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'bg')? const Text('Белгия',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ro')? const Text('Belgia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hr')? const Text('Belgija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'no')? const Text('Belgia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ru')? const Text('Бельгия',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ua')? const Text('Бельгія',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            const Text('ベルギー',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                          ),
                          SizedBox(
                              height: 45,
                              child: Image.asset('assets/ct/be.png')
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox.fromSize(
                  size: const Size(170, 170),
                  child: Material(
                    color: const Color(0xffEBEDF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: InkWell(
                      splashColor: const Color(0xffC9D8F6),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Luxembourg',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de')? const Text('Luxemburg',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Luxembourg',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lu')? const Text('Lëtzebuerg',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'it'||Lan == 'ch it')? const Text('Lussemburgo',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'nl'|| Lan == 'be nl')? const Text('Luxemburg',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'dk')? const Text('Luxembourg',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'gr'|| Lan == 'cy gr')? const Text('Λουξεμβούργο',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'es')? const Text('Luxemburgo',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pt')? const Text('Luxemburgo',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'at')? const Text('Luxemburg',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'se')? const Text('Luxemburg',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fi')? const Text('Luxemburg',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ee')? const Text('Luksemburg',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lv')? const Text('Luksemburga',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lt')? const Text('Liuksemburgas',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pl')? const Text('Luksemburg',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'cz')? const Text('Lucembursko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'sk')? const Text('Luxembursko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hu')? const Text('Luxemburg',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'si')? const Text('Luksemburg',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'mt')? const Text('Lussemburgu',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'bg')? const Text('Люксембург',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ro')? const Text('Luxemburg',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hr')? const Text('Luksemburg',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'no')? const Text('Luxembourg',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ru')? const Text('Люксембург',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ua')? const Text('Люксембург',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            const Text('ルクセンブルク',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                          ),
                          SizedBox(
                              height: 45,
                              child: Image.asset('assets/ct/lu.png')
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox.fromSize(
                  size: const Size(170, 170),
                  child: Material(
                    color: const Color(0xffEBEDF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: InkWell(
                      splashColor: const Color(0xffC9D8F6),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child:(Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Italy',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de')? const Text('Italien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Italie',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lu')? const Text('Italien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'it'||Lan == 'ch it')? const Text('Italia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'nl'|| Lan == 'be nl')? const Text('Italië',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'dk')? const Text('Italien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'gr'|| Lan == 'cy gr')? const Text('Ιταλία',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'es')? const Text('Italia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pt')? const Text('Itália',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'at')? const Text('Italien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'se')? const Text('Italien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fi')? const Text('Italia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ee')? const Text('Itaalia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lv')? const Text('Itālija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lt')? const Text('Italija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pl')? const Text('Włochy',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'cz')? const Text('Itálie',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'sk')? const Text('Taliansko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hu')? const Text('Olaszország',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'si')? const Text('Italija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'mt')? const Text('Italja',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'bg')? const Text('Италия',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ro')? const Text('Italia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hr')? const Text('Italija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'no')? const Text('Italia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ru')? const Text('Италия',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ua')? const Text('Італія',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            const Text('イタリア',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                          ),
                          SizedBox(
                              height: 45,
                              child: Image.asset('assets/ct/it.png')
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox.fromSize(
                  size: const Size(170, 170),
                  child: Material(
                    color: const Color(0xffEBEDF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: InkWell(
                      splashColor: const Color(0xffC9D8F6),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Netherlands',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de')? const Text('Niederlande',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Pays-Bas',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lu')? const Text('Holland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'it'||Lan == 'ch it')? const Text('Paesi Bassi',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'nl'|| Lan == 'be nl')? const Text('Nederland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'dk')? const Text('Holland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'gr'|| Lan == 'cy gr')? const Text('Κάτω Χώρες',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'es')? const Text('Países Bajos',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pt')? const Text('Países Baixos',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'at')? const Text('Niederlande',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'se')? const Text('Nederländerna',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fi')? const Text('Alankomaat',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ee')? const Text('Holland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lv')? const Text('Nīderlande',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lt')? const Text('Nyderlandai',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pl')? const Text('Holandia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'cz')? const Text('Nizozemí',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'sk')? const Text('Holandsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hu')? const Text('Hollandia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'si')? const Text('Nizozemska',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'mt')? const Text('Il-Pajjiżi baxxi',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'bg')? const Text('Нидерландия',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ro')? const Text('Țările de Jos',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hr')? const Text('Nizozemska',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'no')? const Text('Nederland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ru')? const Text('Нидерланды',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ua')? const Text('Нідерланди',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            const Text('オランダ',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                          ),
                          SizedBox(
                              height: 45,
                              child: Image.asset('assets/ct/nl.png')
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox.fromSize(
                  size: const Size(170, 170),
                  child: Material(
                    color: const Color(0xffEBEDF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: InkWell(
                      splashColor: const Color(0xffC9D8F6),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Denmark',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de')? const Text('Dänemark',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Danemark',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lu')? const Text('Dänemark',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'it'||Lan == 'ch it')? const Text('Danimarca',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'nl'|| Lan == 'be nl')? const Text('Denemarken',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'dk')? const Text('Danmark',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'gr'|| Lan == 'cy gr')? const Text('Δανία',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'es')? const Text('Dinamarca',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pt')? const Text('Dinamarca',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'at')? const Text('Dänemark',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'se')? const Text('Danmark',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fi')? const Text('Tanska',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ee')? const Text('Taani',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lv')? const Text('Dānija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lt')? const Text('Danija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pl')? const Text('Dania',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'cz')? const Text('Dánsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'sk')? const Text('Dánsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hu')? const Text('Dánia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'si')? const Text('Danska',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'mt')? const Text('Danimarka',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'bg')? const Text('Дания',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ro')? const Text('Danemarca',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hr')? const Text('Danska',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'no')? const Text('Danmark',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ru')? const Text('Дания',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ua')? const Text('Данія',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            const Text('デンマーク',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                          ),
                          SizedBox(
                              height: 45,
                              child: Image.asset('assets/ct/dk.png')
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox.fromSize(
                  size: const Size(170, 170),
                  child: Material(
                    color: const Color(0xffEBEDF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: InkWell(
                      splashColor: const Color(0xffC9D8F6),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Greece',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de')? const Text('Griechenland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Grèce',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lu')? const Text('Griicheland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'it'||Lan == 'ch it')? const Text('Grecia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'nl'|| Lan == 'be nl')? const Text('Griekenland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'dk')? const Text('Grækenland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'gr'|| Lan == 'cy gr')? const Text('Ελλάδα',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'es')? const Text('Grecia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pt')? const Text('Grécia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'at')? const Text('Griechenland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'se')? const Text('Grekland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fi')? const Text('Kreikka',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ee')? const Text('Kreeka',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lv')? const Text('Grieķija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lt')? const Text('Graikija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pl')? const Text('Grecja',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'cz')? const Text('Řecko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'sk')? const Text('Grécko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hu')? const Text('Görögország',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'si')? const Text('Grčija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'mt')? const Text('Greċja',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'bg')? const Text('Гърция',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ro')? const Text('Grecia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hr')? const Text('Grčka',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'no')? const Text('Hellas',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ru')? const Text('Греция',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ua')? const Text('Греція',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            const Text('ギリシャ',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                          ),
                          SizedBox(
                              height: 45,
                              child: Image.asset('assets/ct/gr.png')
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox.fromSize(
                  size: const Size(170, 170),
                  child: Material(
                    color: const Color(0xffEBEDF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: InkWell(
                      splashColor: const Color(0xffC9D8F6),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Cyprus',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de')? const Text('Zypern',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Chypre',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lu')? const Text('Zypern',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'it'||Lan == 'ch it')? const Text('Cipro',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'nl'|| Lan == 'be nl')? const Text('Cyprus',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'dk')? const Text('Cypern',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'gr'|| Lan == 'cy gr')? const Text('Κύπρος',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'es')? const Text('Chipre',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pt')? const Text('Chipre',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'at')? const Text('Zypern',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'se')? const Text('Cypern',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fi')? const Text('Kypros',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ee')? const Text('Küpros',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lv')? const Text('Kipra',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lt')? const Text('Kipras',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pl')? const Text('Cypr',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'cz')? const Text('Kypr',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'sk')? const Text('Cyprus',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hu')? const Text('Ciprus',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'si')? const Text('Ciper',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'mt')? const Text('Kipru',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'bg')? const Text('Кипър',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ro')? const Text('Cipru',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hr')? const Text('Cipar',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'no')? const Text('Kypros',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ru')? const Text('Кипр',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ua')? const Text('Кіпр',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            const Text('キプロス',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                          ),
                          SizedBox(
                              height: 45,
                              child: Image.asset('assets/ct/cy.png')
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox.fromSize(
                  size: const Size(170, 170),
                  child: Material(
                    color: const Color(0xffEBEDF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: InkWell(
                      splashColor: const Color(0xffC9D8F6),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Spain',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de')? const Text('Spanien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Espagne',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lu')? const Text('Spanien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'it'||Lan == 'ch it')? const Text('Spagna',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'nl'|| Lan == 'be nl')? const Text('Spanje',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'dk')? const Text('Spanien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'gr'|| Lan == 'cy gr')? const Text('Ισπανία',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'es')? const Text('España',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pt')? const Text('Espanha',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'at')? const Text('Spanien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'se')? const Text('Spanien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fi')? const Text('Espanja',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ee')? const Text('Hispaania',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lv')? const Text('Spānija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lt')? const Text('Ispanija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pl')? const Text('Hiszpania',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'cz')? const Text('Španělsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'sk')? const Text('Španielsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hu')? const Text('Spanyolország',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'si')? const Text('Španija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'mt')? const Text('Spanja',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'bg')? const Text('Испания',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ro')? const Text('Spania',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hr')? const Text('Španjolska',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'no')? const Text('Spania',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ru')? const Text('Испания',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ua')? const Text('Іспанія',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            const Text('スペイン',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                          ),
                          SizedBox(
                              height: 45,
                              child: Image.asset('assets/ct/es.png')
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox.fromSize(
                  size: const Size(170, 170),
                  child: Material(
                    color: const Color(0xffEBEDF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: InkWell(
                      splashColor: const Color(0xffC9D8F6),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Portugal',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de')? const Text('Portugal',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Portugal',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lu')? const Text('Portugal',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'it'||Lan == 'ch it')? const Text('Portogallo',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'nl'|| Lan == 'be nl')? const Text('Portugal',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'dk')? const Text('Portugal',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'gr'|| Lan == 'cy gr')? const Text('Πορτογαλία',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'es')? const Text('Portugal',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pt')? const Text('Portugal',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'at')? const Text('Portugal',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'se')? const Text('Portugal',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fi')? const Text('Portugali',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ee')? const Text('Portugal',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lv')? const Text('Portugāle',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lt')? const Text('Portugalija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pl')? const Text('Portugalia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'cz')? const Text('Portugalsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'sk')? const Text('Portugalsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hu')? const Text('Portugália',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'si')? const Text('Portugalska',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'mt')? const Text('Portugall',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'bg')? const Text('Португалия',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ro')? const Text('Portugalia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hr')? const Text('Portugal',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'no')? const Text('Portugal',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ru')? const Text('Португалия',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ua')? const Text('Португалія',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            const Text('ポルトガル',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                          ),
                          SizedBox(
                              height: 45,
                              child: Image.asset('assets/ct/pt.png')
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox.fromSize(
                  size: const Size(170, 170),
                  child: Material(
                    color: const Color(0xffEBEDF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: InkWell(
                      splashColor: const Color(0xffC9D8F6),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Austria',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de')? const Text('Österreich',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Autriche',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lu')? const Text('Lëtzebuerg',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'it'||Lan == 'ch it')? const Text('Austria',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'nl'|| Lan == 'be nl')? const Text('Oostenrijk',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'dk')? const Text('Østrig',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'gr'|| Lan == 'cy gr')? const Text('Αυστρία',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'es')? const Text('Austria',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pt')? const Text('Áustria',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'at')? const Text('Österreich',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'se')? const Text('Österrike',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fi')? const Text('Itävalta',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ee')? const Text('Austria',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lv')? const Text('Austrija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lt')? const Text('Austrija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pl')? const Text('Austria',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'cz')? const Text('Rakousko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'sk')? const Text('Rakúsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hu')? const Text('Ausztria',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'si')? const Text('Avstrija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'mt')? const Text('Awstrija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'bg')? const Text('Австрия',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ro')? const Text('Austria',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hr')? const Text('Austrija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'no')? const Text('Østerrike',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ru')? const Text('Австрия',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ua')? const Text('Австрія',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            const Text('オーストリア',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                          ),
                          SizedBox(
                              height: 45,
                              child: Image.asset('assets/ct/at.png')
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox.fromSize(
                  size: const Size(170, 170),
                  child: Material(
                    color: const Color(0xffEBEDF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: InkWell(
                      splashColor: const Color(0xffC9D8F6),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Sweden',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de')? const Text('Schweden',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Suède',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lu')? const Text('Schweden',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'it'||Lan == 'ch it')? const Text('Svezia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'nl'|| Lan == 'be nl')? const Text('Zweden',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'dk')? const Text('Sverige',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'gr'|| Lan == 'cy gr')? const Text('Σουηδία',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'es')? const Text('Suecia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pt')? const Text('Suécia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'at')? const Text('Schweden',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'se')? const Text('Sverige',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fi')? const Text('Ruotsi',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ee')? const Text('Rootsi',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lv')? const Text('Zviedrija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lt')? const Text('Švedija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pl')? const Text('Szwecja',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'cz')? const Text('Švédsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'sk')? const Text('Švédsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hu')? const Text('Svédország',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'si')? const Text('Švedska',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'mt')? const Text('Svezja',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'bg')? const Text('Швеция',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ro')? const Text('Suedia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hr')? const Text('Švedska',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'no')? const Text('Sverige',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ru')? const Text('Швеция',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ua')? const Text('Швеція',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            const Text('スウェーデン',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                          ),
                          SizedBox(
                              height: 45,
                              child: Image.asset('assets/ct/se.png')
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox.fromSize(
                  size: const Size(170, 170),
                  child: Material(
                    color: const Color(0xffEBEDF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: InkWell(
                      splashColor: const Color(0xffC9D8F6),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Finland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de')? const Text('Finnland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Finlande',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lu')? const Text('Finnland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'it'||Lan == 'ch it')? const Text('Finlandia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'nl'|| Lan == 'be nl')? const Text('Finland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'dk')? const Text('Suomi',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'gr'|| Lan == 'cy gr')? const Text('Φινλανδία',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'es')? const Text('Finlandia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pt')? const Text('Finlândia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'at')? const Text('Finnland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'se')? const Text('Finland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fi')? const Text('Suomi',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ee')? const Text('Soome',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lv')? const Text('Somija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lt')? const Text('Suomija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pl')? const Text('Finlandia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'cz')? const Text('Finsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'sk')? const Text('Fínsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hu')? const Text('Finnország',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'si')? const Text('Finska',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'mt')? const Text('Il-Finlandja',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'bg')? const Text('Финландия',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ro')? const Text('Finlanda',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hr')? const Text('Finska',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'no')? const Text('Finland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ru')? const Text('Финляндия',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ua')? const Text('Фінляндія',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            const Text('フィンランド',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                          ),
                          SizedBox(
                              height: 45,
                              child: Image.asset('assets/ct/fi.png')
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox.fromSize(
                  size: const Size(170, 170),
                  child: Material(
                    color: const Color(0xffEBEDF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: InkWell(
                      splashColor: const Color(0xffC9D8F6),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Estonia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de')? const Text('Estland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Estonie',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lu')? const Text('Estland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'it'||Lan == 'ch it')? const Text('Estonia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'nl'|| Lan == 'be nl')? const Text('Estland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'dk')? const Text('Eesti',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'gr'|| Lan == 'cy gr')? const Text('Εσθονία',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'es')? const Text('Estonia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pt')? const Text('Estónia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'at')? const Text('Estland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'se')? const Text('Estland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fi')? const Text('Viro',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ee')? const Text('Eesti',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lv')? const Text('Igaunija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lt')? const Text('Estija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pl')? const Text('Estonia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'cz')? const Text('Estonsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'sk')? const Text('Estónsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hu')? const Text('Észtország',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'si')? const Text('Estonija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'mt')? const Text('Estonja',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'bg')? const Text('Естония',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ro')? const Text('Estonia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hr')? const Text('Estonija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'no')? const Text('Estland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ru')? const Text('Эстония',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ua')? const Text('Естонія',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            const Text('エストニア',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                          ),
                          SizedBox(
                              height: 45,
                              child: Image.asset('assets/ct/ee.png')
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox.fromSize(
                  size: const Size(170, 170),
                  child: Material(
                    color: const Color(0xffEBEDF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: InkWell(
                      splashColor: const Color(0xffC9D8F6),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Latvia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de')? const Text('Lettland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Lettonie',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lu')? const Text('Lettland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'it'||Lan == 'ch it')? const Text('Lettonia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'nl'|| Lan == 'be nl')? const Text('Letland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'dk')? const Text('Latvija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'gr'|| Lan == 'cy gr')? const Text('Λεττονία',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'es')? const Text('Letonia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pt')? const Text('Letónia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'at')? const Text('Lettland ',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'se')? const Text('Lettland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fi')? const Text('Latvia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ee')? const Text('Läti',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lv')? const Text('Latvija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lt')? const Text('Latvija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pl')? const Text('Łotwa',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'cz')? const Text('Lotyšsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'sk')? const Text('Lotyšsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hu')? const Text('Lettország',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'si')? const Text('Latvija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'mt')? const Text('Latvja',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'bg')? const Text('Латвия',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ro')? const Text('Letonia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hr')? const Text('Latvija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'no')? const Text('Latvia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ru')? const Text('Латвия',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ua')? const Text('Латвія',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            const Text('ラトビア',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                          ),
                          SizedBox(
                              height: 45,
                              child: Image.asset('assets/ct/lv.png')
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox.fromSize(
                  size: const Size(170, 170),
                  child: Material(
                    color: const Color(0xffEBEDF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: InkWell(
                      splashColor: const Color(0xffC9D8F6),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Lithuania',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de')? const Text('Litauen',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Lituanie',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lu')? const Text('Litauen',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'it'||Lan == 'ch it')? const Text('Lituania',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'nl'|| Lan == 'be nl')? const Text('Litouwen',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'dk')? const Text('Lietuva',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'gr'|| Lan == 'cy gr')? const Text('Λιθουανία',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'es')? const Text('Lituania',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pt')? const Text('Lituânia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'at')? const Text('Litauen',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'se')? const Text('Litauen',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fi')? const Text('Liettua',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ee')? const Text('Leedu',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lv')? const Text('Lietuva',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lt')? const Text('Lietuva',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pl')? const Text('Litwa',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'cz')? const Text('Litva',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'sk')? const Text('Litva',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hu')? const Text('Litvánia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'si')? const Text('Litva',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'mt')? const Text('Litwanja',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'bg')? const Text('Литва',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ro')? const Text('Lituania',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hr')? const Text('Litva',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'no')? const Text('Litauen',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ru')? const Text('Литва',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ua')? const Text('Литва',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            const Text('リトアニア',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                          ),
                          SizedBox(
                              height: 45,
                              child: Image.asset('assets/ct/lt.png')
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox.fromSize(
                  size: const Size(170, 170),
                  child: Material(
                    color: const Color(0xffEBEDF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: InkWell(
                      splashColor: const Color(0xffC9D8F6),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Poland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de')? const Text('Polen',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Pologne',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lu')? const Text('Polen',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'it'||Lan == 'ch it')? const Text('Polonia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'nl'|| Lan == 'be nl')? const Text('Polen',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'dk')? const Text('Polen',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'gr'|| Lan == 'cy gr')? const Text('Πολωνία',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'es')? const Text('Polonia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pt')? const Text('Polónia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'at')? const Text('Polen',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'se')? const Text('Polen',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fi')? const Text('Puola',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ee')? const Text('Poola',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lv')? const Text('Polija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lt')? const Text('Lenkija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pl')? const Text('Polska',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'cz')? const Text('Polsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'sk')? const Text('Poľsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hu')? const Text('Lengyelország',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'si')? const Text('Poljska',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'mt')? const Text('Polonja',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'bg')? const Text('Полша',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ro')? const Text('Polonia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hr')? const Text('Poljska',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'no')? const Text('Polen',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ru')? const Text('Польша',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ua')? const Text('Польща',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            const Text('ポーランド',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                          ),
                          SizedBox(
                              height: 45,
                              child: Image.asset('assets/ct/pl.png')
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox.fromSize(
                  size: const Size(170, 170),
                  child: Material(
                    color: const Color(0xffEBEDF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: InkWell(
                      splashColor: const Color(0xffC9D8F6),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Czech',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de')? const Text('Tschechien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text(' tchèque',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lu')? const Text('Tschechien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'it'||Lan == 'ch it')? const Text('Ceca',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'nl'|| Lan == 'be nl')? const Text('Tsjechië',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'dk')? const Text('Tjekkiet',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'gr'|| Lan == 'cy gr')? const Text('Τσεχία',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'es')? const Text('Checa',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pt')? const Text('Checa',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'at')? const Text('Tschechien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'se')? const Text('Tjeckien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fi')? const Text('Tšekki',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ee')? const Text('Tšehhi',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lv')? const Text('Čehija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lt')? const Text('Čekija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pl')? const Text('Czeska',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'cz')? const Text('Česká',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'sk')? const Text('Česká',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hu')? const Text('Csehország',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'si')? const Text('Češka',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'mt')? const Text('Ċeka',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'bg')? const Text('Чехия',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ro')? const Text('Cehia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hr')? const Text('Češka',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'no')? const Text('Tsjekkia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ru')? const Text('Чехия',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ua')? const Text('Чехія',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            const Text('チェコ',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                          ),
                          SizedBox(
                              height: 45,
                              child: Image.asset('assets/ct/cz.png')
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox.fromSize(
                  size: const Size(170, 170),
                  child: Material(
                    color: const Color(0xffEBEDF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: InkWell(
                      splashColor: const Color(0xffC9D8F6),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Slovakia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de')? const Text('Slowakei',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Slovaquie',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lu')? const Text('Slowakei',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'it'||Lan == 'ch it')? const Text('Slovacchia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'nl'|| Lan == 'be nl')? const Text('Slowakije',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'dk')? const Text('Slovakiet',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'gr'|| Lan == 'cy gr')? const Text('Σλοβακία',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'es')? const Text('Eslovaquia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pt')? const Text('Eslováquia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'at')? const Text('Slowakei',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'se')? const Text('Slovakien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fi')? const Text('Slovakia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ee')? const Text('Slovakkia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lv')? const Text('Slovakija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lt')? const Text('Slovakija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pl')? const Text('Słowacja',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'cz')? const Text('Slovensko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'sk')? const Text('Slovensko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hu')? const Text('Szlovákia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'si')? const Text('Slovaška',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'mt')? const Text('Slovakkja',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'bg')? const Text('Словакия',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ro')? const Text('Slovacia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hr')? const Text('Slovačka',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'no')? const Text('Slovakia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ru')? const Text('Словакия',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ua')? const Text('Словаччина',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            const Text('スロバキア',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                          ),
                          SizedBox(
                              height: 45,
                              child: Image.asset('assets/ct/sk.png')
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox.fromSize(
                  size: const Size(170, 170),
                  child: Material(
                    color: const Color(0xffEBEDF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: InkWell(
                      splashColor: const Color(0xffC9D8F6),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Hungary',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de')? const Text('Ungarn',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Hongrie',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lu')? const Text('Ungarn',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'it'||Lan == 'ch it')? const Text('Ungheria',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'nl'|| Lan == 'be nl')? const Text('Hongarije',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'dk')? const Text('Ungarn',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'gr'|| Lan == 'cy gr')? const Text('Ουγγαρία',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'es')? const Text('Hungría',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pt')? const Text('Hungria',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'at')? const Text('Ungarn ',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'se')? const Text('Ungern',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fi')? const Text('Unkari',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ee')? const Text('Ungari',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lv')? const Text('Vengrija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lt')? const Text('Vengrija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pl')? const Text('Węgry',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'cz')? const Text('Maďarsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'sk')? const Text('Maďarsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hu')? const Text('Magyarország',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'si')? const Text('Madžarska',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'mt')? const Text('Ungerija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'bg')? const Text('Унгария',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ro')? const Text('Ungaria',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hr')? const Text('Mađarska',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'no')? const Text('Ungarn',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ru')? const Text('Венгрия',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ua')? const Text('Угорщина',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            const Text('ハンガリー',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                          ),
                          SizedBox(
                              height: 45,
                              child: Image.asset('assets/ct/hu.png')
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox.fromSize(
                  size: const Size(170, 170),
                  child: Material(
                    color: const Color(0xffEBEDF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: InkWell(
                      splashColor: const Color(0xffC9D8F6),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Slovenia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de')? const Text('Slowenien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Slovénie',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lu')? const Text('Slowenien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'it'||Lan == 'ch it')? const Text('Slovenia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'nl'|| Lan == 'be nl')? const Text('Slovenië',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'dk')? const Text('Slovenien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'gr'|| Lan == 'cy gr')? const Text('Σλοβενία',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'es')? const Text('Eslovenia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pt')? const Text('Eslovênia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'at')? const Text('Slowenien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'se')? const Text('Slovenien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fi')? const Text('Slovenia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ee')? const Text('Sloveenia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lv')? const Text('Slovēnija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lt')? const Text('Slovėnija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pl')? const Text('Słowenia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'cz')? const Text('Slovinsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'sk')? const Text('Slovinsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hu')? const Text('Szlovénia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'si')? const Text('Slovenija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'mt')? const Text('Slovenja',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'bg')? const Text('Словения',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ro')? const Text('Slovenia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hr')? const Text('Slovenija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'no')? const Text('Slovenia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ru')? const Text('Словения',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ua')? const Text('Словенія',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            const Text('スロベニア',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                          ),
                          SizedBox(
                              height: 45,
                              child: Image.asset('assets/ct/si.png')
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox.fromSize(
                  size: const Size(170, 170),
                  child: Material(
                    color: const Color(0xffEBEDF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: InkWell(
                      splashColor: const Color(0xffC9D8F6),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Malta',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de')? const Text('Malta',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Malte',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lu')? const Text('Malta',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'it'||Lan == 'ch it')? const Text('Malta',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'nl'|| Lan == 'be nl')? const Text('Malta',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'dk')? const Text('Malta',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'gr'|| Lan == 'cy gr')? const Text('Μάλτα',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'es')? const Text('Malta',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pt')? const Text('Malta',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'at')? const Text('Malta',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'se')? const Text('Malta',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fi')? const Text('Malta',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ee')? const Text('Malta',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lv')? const Text('Malta',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lt')? const Text('Malta',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pl')? const Text('Malta',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'cz')? const Text('Malta',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'sk')? const Text('Malta',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hu')? const Text('Málta',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'si')? const Text('Malta',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'mt')? const Text('Malta',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'bg')? const Text('Малта',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ro')? const Text('Malta',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hr')? const Text('Malta',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'no')? const Text('Malta',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ru')? const Text('Мальта',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ua')? const Text('Мальта',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            const Text('マルタ',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                          ),
                          SizedBox(
                              height: 45,
                              child: Image.asset('assets/ct/mt.png')
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox.fromSize(
                  size: const Size(170, 170),
                  child: Material(
                    color: const Color(0xffEBEDF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: InkWell(
                      splashColor: const Color(0xffC9D8F6),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Bulgaria',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de')? const Text('Bulgarien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Bulgarie',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'lu')? const Text('Bulgarien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'it'||Lan == 'Bulgaria')? const Text('Era',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'nl'|| Lan == 'Bulgarije')? const Text('Het was',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'dk')? const Text('Bulgarien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'gr'|| Lan == 'Βουλγαρία')? const Text('Ήταν',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'es')? const Text('Bulgaria',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'pt')? const Text('Bulgária',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'at')? const Text('Bulgarien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'se')? const Text('Bulgarien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'fi')? const Text('Bulgaria',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'ee')? const Text('Bulgaaria',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'lv')? const Text('Bulgārija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'lt')? const Text('Bulgarija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'pl')? const Text('Bułgaria',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'cz')? const Text('Bulharsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'sk')? const Text('Bulharsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'hu')? const Text('Bulgária',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'si')? const Text('Bolgarija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'mt')? const Text('Bulgarija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'bg')? const Text('България',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'ro')? const Text('Bulgaria',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'hr')? const Text('Bugarska',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'no')? const Text('Bulgaria',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'ru')? const Text('Болгария',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'ua')? const Text('Болгарія',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      const Text('ブルガリア',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                          ),
                          SizedBox(
                              height: 45,
                              child: Image.asset('assets/ct/bg.png')
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox.fromSize(
                  size: const Size(170, 170),
                  child: Material(
                    color: const Color(0xffEBEDF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: InkWell(
                      splashColor: const Color(0xffC9D8F6),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Romania',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de')? const Text('Rumänien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Roumanie',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lu')? const Text('Rumänien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'it'||Lan == 'ch it')? const Text('Romania',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'nl'|| Lan == 'be nl')? const Text('Roemenië',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'dk')? const Text('Rumänien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'gr'|| Lan == 'cy gr')? const Text('Ρουμανία',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'es')? const Text('Rumania',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pt')? const Text('Romênia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'at')? const Text('Rumänien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'se')? const Text('Rumänien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fi')? const Text('Romania',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ee')? const Text('Rumeenia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lv')? const Text('Rumānija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lt')? const Text('Rumunija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pl')? const Text('Rumunia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'cz')? const Text('Rumunsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'sk')? const Text('Rumunsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hu')? const Text('Románia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'si')? const Text('Romunija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'mt')? const Text('Rumunija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'bg')? const Text('Румъния',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ro')? const Text('România',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hr')? const Text('Rumunjska',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'no')? const Text('Romania',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ru')? const Text('Румыния',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ua')? const Text('Румунія',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            const Text('ルーマニア',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                          ),
                          SizedBox(
                              height: 45,
                              child: Image.asset('assets/ct/ro.png')
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox.fromSize(
                  size: const Size(170, 170),
                  child: Material(
                    color: const Color(0xffEBEDF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: InkWell(
                      splashColor: const Color(0xffC9D8F6),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Croatia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de')? const Text('Kroatien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Croatie',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'lu')? const Text('Kroatien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'it'||Lan == 'ch it')? const Text('Croazia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'nl'|| Lan == 'be nl')? const Text('Kroatië',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'dk')? const Text('Kroatien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'gr'|| Lan == 'cy gr')? const Text('Κροατία',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'es')? const Text('Croacia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'pt')? const Text('Croácia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'at')? const Text('Kroatien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'se')? const Text('Kroatien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'fi')? const Text('Kroatia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'ee')? const Text('Horvaatia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'lv')? const Text('Horvātija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'lt')? const Text('Kroatija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'pl')? const Text('Chorwacja',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'cz')? const Text('Chorvatsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'sk')? const Text('Chorvátsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'hu')? const Text('Horvátország',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'si')? const Text('Hrvaška',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'mt')? const Text('Kroazija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'bg')? const Text('Хърватия',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'ro')? const Text('Croația',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'hr')? const Text('Hrvatska',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'no')? const Text('Kroatia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'ru')? const Text('Хорватия',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      (Lan == 'ua')? const Text('Хорватія',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                      const Text('クロアチア',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                      ),
                          SizedBox(
                              height: 45,
                              child: Image.asset('assets/ct/hr.png')
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox.fromSize(
                  size: const Size(170, 170),
                  child: Material(
                    color: const Color(0xffEBEDF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: InkWell(
                      splashColor: const Color(0xffC9D8F6),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Ireland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de')? const Text('Irland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Irlande',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lu')? const Text('Irland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'it'||Lan == 'ch it')? const Text("Irlanda",style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'nl'|| Lan == 'be nl')? const Text('Ierland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'dk')? const Text('Irland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'gr'|| Lan == 'cy gr')? const Text('Ιρλανδία',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'es')? const Text('Irlanda',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pt')? const Text('Irlanda',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'at')? const Text('Irland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'se')? const Text('Irland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fi')? const Text('Irlanti',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ee')? const Text('Iirimaa',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lv')? const Text('Īrija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lt')? const Text('Airija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pl')? const Text('Irlandia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'cz')? const Text('Irsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'sk')? const Text('Írsko',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hu')? const Text('Írország',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'si')? const Text('Irska',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'mt')? const Text('Irlanda',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'bg')? const Text('Ирландия',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ro')? const Text('Irlanda',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hr')? const Text('Irska',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'no')? const Text('Irland',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ru')? const Text('Ирландия',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ua')? const Text('Ірландія',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            const Text('アイルランド',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                          ),
                          SizedBox(
                              height: 45,
                              child: Image.asset('assets/ct/ie.png')
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox.fromSize(
                  size: const Size(170, 170),
                  child: Material(
                    color: const Color(0xffEBEDF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: InkWell(
                      splashColor: const Color(0xffC9D8F6),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('It was',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de')? const Text('Es war',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Cétait',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lu')? const Text('Et war',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'it'||Lan == 'ch it')? const Text('Era',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'nl'|| Lan == 'be nl')? const Text('Het was',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'dk')? const Text('Det var',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'gr'|| Lan == 'cy gr')? const Text('Ήταν',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'es')? const Text('Fue',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pt')? const Text('Foi',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'at')? const Text('Es war',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'se')? const Text('Det var',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'fi')? const Text('Se oli',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ee')? const Text('See oli',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lv')? const Text('Tas bija',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'lt')? const Text('Tai buvo',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'pl')? const Text('To było',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'cz')? const Text('To bylo',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'sk')? const Text('Bolo to',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hu')? const Text('Ez volt',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'si')? const Text('To je bilo',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'mt')? const Text('Kien',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'bg')? const Text('То беше',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ro')? const Text('A fost',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'hr')? const Text('To je bilo',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'no')? const Text('Det var',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ru')? const Text('Это было',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            (Lan == 'ua')? const Text('Це було',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                            const Text('かつて',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                          ),
                          SizedBox(
                              height: 45,
                              child: Image.asset('assets/ct/gb.png')
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Container(
              height: 90,
              width: double.infinity,
              color: const Color(0xffDFDFDF),
              alignment: Alignment.center,
              child: const Column(
                children: [
                  Text(
                    "@1-10 High_House",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff5E5E5E),
                    ),
                  ),
                  Text(
                    "Translate by ChatGPT",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff5E5E5E),
                    ),
                  ),
                  Text(
                    "翻訳による改行ずれは家髙まで",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff5E5E5E),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}