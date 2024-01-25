import 'dart:math';
import 'package:flutter/material.dart';
import 'package:test_tester/Institution.dart';
import 'Geography.dart';
import 'Quiz Home Easy.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserPreferences.init();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;

  @override
  void initState() {
    super.initState();
    _fetchLocale().then((locale) {
      setState(() {
        _locale = locale;
      });
    });
  }

  Future<Locale> _fetchLocale() async {
    var languageCode = UserPreferences.getLanguage();
    return Locale(languageCode ?? 'ja');
  }

  void _changeLanguage(String languageCode) async {
    await UserPreferences.setLanguage(languageCode);
    var locale = await _fetchLocale();
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_locale == null) {
      return CircularProgressIndicator();
    } else {
      return MaterialApp(
        locale: _locale,
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('en'),
          Locale('hi'),
          Locale('ja'),
        ],
        title: 'European Union',
        theme: ThemeData(fontFamily: 'georgia'),
        home: Home(title: 'EU',
          onLanguageChanged: _changeLanguage,
        ),
      );
    }
  }
}

class Home extends StatefulWidget {
  final String title;
  final ValueChanged<String> onLanguageChanged;

  Home({Key? key, required this.title, required this.onLanguageChanged})
      : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var Lan = 'gb';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
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
          actions: [
            DropdownButton<String>(
              items: [
                DropdownMenuItem(value: "en", child: Text("English")),
                DropdownMenuItem(value: "ja", child: Text("日本語")),
              ],
              onChanged: (value) {
                widget.onLanguageChanged(value!);
              },
            ),
          ],
          elevation: 10,
          automaticallyImplyLeading: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                alignment: Alignment.center,
                height: 250,
                width: double.infinity,
                color: const Color(0xff001489),
              )
            ),
            Column(
              //コラムのコラム
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 50),
                SizedBox(
                    child: (Lan == 'gb' || Lan == 'us' || Lan == 'ie')
                        ? const Text(' Learn about us', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),)
                        :
                    (Lan == 'de' || Lan == 'be de' || Lan == 'ch de' ||
                        Lan == 'lu de' || Lan == 'at') ? const Text(
                      '  Erfahren Sie mehr über uns', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'fr' || Lan == 'be fr' || Lan == 'lu fr' ||
                        Lan == 'ch fr') ? const Text(
                      '  En savoir plus sur nous', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'lu') ? const Text(' Erfahren iwwert eis',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'it' || Lan == 'ch it') ? const Text(
                      ' Scopri di più su di noi', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'nl' || Lan == 'be nl') ? const Text(
                      '  Leer meer over ons', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'dk') ? const Text(' Lær om os', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'gr' || Lan == 'cy gr') ? const Text(
                      '  Μάθετε για εμάς',
                      style: TextStyle(fontSize: 30, color: Color(
                          0xff333333),),) :
                    (Lan == 'es') ? const Text(' Conoce más sobre nosotros',
                      style: TextStyle(fontSize: 30, color: Color(
                          0xff333333),),) :
                    (Lan == 'pt') ? const Text(' Saiba mais sobre nós',
                      style: TextStyle(fontSize: 30, color: Color(
                          0xff333333),),) :
                    (Lan == 'se') ? const Text(' Lär dig mer om oss',
                      style: TextStyle(fontSize: 30, color: Color(
                          0xff333333),),) :
                    (Lan == 'fi') ? const Text(
                      ' Tutustu meihin tarkemmin', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'ee') ? const Text(
                      ' Uuri meie kohta rohkem', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'lv') ? const Text(
                      ' Uzzini vairāk par mums', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'lt') ? const Text(
                      ' Sužinokite daugiau apie mus', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'pl') ? const Text(' Dowiedz się więcej o nas',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'cz') ? const Text(' Dozvědět se více o nás',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'sk') ? const Text(' Dozviete sa viac o nás',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'hu') ? const Text(' Tudj meg többet rólunk',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'si') ? const Text(' Pojdite več o nas',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'mt') ? const Text(' Ikkomplu dwarina',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'bg') ? const Text(' Научете повече за нас',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'ro') ? const Text(' Aflați mai multe despre noi',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'hr') ? const Text(' Saznajte više o nama',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'no') ? const Text(' Lær mer om oss',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'ru') ? const Text(' Узнайте больше о нас',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'ua') ? const Text(' Дізнайтеся більше про нас',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    const Text('  私達を知る', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),)
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
                          onTap: () async {
                            RouteSettings settings = RouteSettings(arguments: Lan);
                            var result = await Navigator.of(context).push(
                              MaterialPageRoute(
                                settings: settings,
                                builder: (context) => Institution(),
                              ),
                            );
                            setState(() {
                              Lan = result as String;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Institutions', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de'|| Lan == 'at')? const Text('Institutionen', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Institutions', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Lan == 'lu')? const Text('Institutiounen', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Lan == 'it'||Lan == 'ch it')? const Text('Istituzioni', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Lan == 'nl'|| Lan == 'be nl')? const Text('Instellingen', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Lan == 'dk')? const Text('Institutioner', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Lan == 'gr'|| Lan == 'cy gr')? const Text('Θεσμικά όργανα', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Lan == 'es')? const Text('Instituciones', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Lan == 'pt')? const Text('Instituições', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Lan == 'se')? const Text('Institutioner', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Lan == 'fi')? const Text('Instituutiot', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Lan == 'ee')? const Text('Asutused', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Lan == 'lv')? const Text('Iestādes', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Lan == 'lt')? const Text('Institucijos', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Lan == 'pl')? const Text('Instytucje', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Lan == 'cz')? const Text('Instituce', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Lan == 'sk')? const Text('Inštitúcie', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Lan == 'hu')? const Text('Intézmények', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Lan == 'si')? const Text('Ustanove', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Lan == 'mt')? const Text('Istituzzjonijiet', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Lan == 'bg')? const Text('Институции', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Lan == 'ro')? const Text('Instituții', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Lan == 'hr')? const Text('Institucije', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Lan == 'no')? const Text('Institusjoner', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Lan == 'ru')? const Text('Институты', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Lan == 'ua')? const Text('Установи', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              const Text('機関'
                                , style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),),
                               const Icon(
                                Icons.account_balance_outlined,
                                color: Color(0xff001489),
                                size: 30,
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
                          onTap: () async {
                            RouteSettings settings = RouteSettings(arguments: Lan);
                            var result = await Navigator.of(context).push(
                              MaterialPageRoute(
                                settings: settings,
                                builder: (context) => Geography(),
                              ),
                            );
                            setState(() {
                              Lan = result as String;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              (Lan == 'gb' || Lan == 'us' || Lan == 'ie')
                                  ? const Text('Geography', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),) :
                              (Lan == 'de' || Lan == 'be de' ||
                                  Lan == 'ch de' || Lan == 'lu de' ||
                                  Lan == 'at') ? const Text('Geografie',
                                style: TextStyle(
                                  fontSize: 26, color: Color(0xff001489),),) :
                              (Lan == 'fr' || Lan == 'be fr' ||
                                  Lan == 'lu fr' || Lan == 'ch fr')
                                  ? const Text('Géographie', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),)
                                  :
                              (Lan == 'lu') ? const Text('Geographie',
                                style: TextStyle(
                                  fontSize: 26, color: Color(0xff001489),),) :
                              (Lan == 'it' || Lan == 'ch it') ? const Text(
                                'Geografia', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),) :
                              (Lan == 'nl' || Lan == 'be nl') ? const Text(
                                'Geografie', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),) :
                              (Lan == 'dk') ? const Text('Geografi',
                                style: TextStyle(
                                  fontSize: 26, color: Color(0xff001489),),) :
                              (Lan == 'gr' || Lan == 'cy gr') ? const Text(
                                'Γεωγραφία', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),) :
                              (Lan == 'es') ? const Text('Geografía',
                                style: TextStyle(
                                  fontSize: 26, color: Color(0xff001489),),) :
                              (Lan == 'pt') ? const Text('Geografia',
                                style: TextStyle(
                                  fontSize: 26, color: Color(0xff001489),),) :
                              (Lan == 'se') ? const Text('Geografi',
                                style: TextStyle(
                                  fontSize: 26, color: Color(0xff001489),),) :
                              (Lan == 'fi') ? const Text('Maantiede',
                                style: TextStyle(
                                  fontSize: 26, color: Color(0xff001489),),) :
                              (Lan == 'ee') ? const Text('Geograafia',
                                style: TextStyle(
                                  fontSize: 26, color: Color(0xff001489),),) :
                              (Lan == 'lv') ? const Text('Ģeogrāfija',
                                style: TextStyle(
                                  fontSize: 26, color: Color(0xff001489),),) :
                              (Lan == 'lt') ? const Text('Geografija',
                                style: TextStyle(
                                  fontSize: 26, color: Color(0xff001489),),) :
                              (Lan == 'pl') ? const Text('Geografia',
                                style: TextStyle(
                                  fontSize: 26, color: Color(0xff001489),),) :
                              (Lan == 'cz') ? const Text('Geografie',
                                style: TextStyle(
                                  fontSize: 26, color: Color(0xff001489),),) :
                              (Lan == 'sk') ? const Text('Geografia',
                                style: TextStyle(
                                  fontSize: 26, color: Color(0xff001489),),) :
                              (Lan == 'hu') ? const Text('Földrajz',
                                style: TextStyle(
                                  fontSize: 26, color: Color(0xff001489),),) :
                              (Lan == 'si') ? const Text('Geografija',
                                style: TextStyle(
                                  fontSize: 26, color: Color(0xff001489),),) :
                              (Lan == 'mt') ? const Text('Ġeografija',
                                style: TextStyle(
                                  fontSize: 26, color: Color(0xff001489),),) :
                              (Lan == 'bg') ? const Text('География',
                                style: TextStyle(
                                  fontSize: 26, color: Color(0xff001489),),) :
                              (Lan == 'ro') ? const Text('Geografie',
                                style: TextStyle(
                                  fontSize: 26, color: Color(0xff001489),),) :
                              (Lan == 'hr') ? const Text('Geografija',
                                style: TextStyle(
                                  fontSize: 26, color: Color(0xff001489),),) :
                              (Lan == 'no') ? const Text('Geografi',
                                style: TextStyle(
                                  fontSize: 26, color: Color(0xff001489),),) :
                              (Lan == 'ru') ? const Text('География',
                                style: TextStyle(
                                  fontSize: 26, color: Color(0xff001489),),) :
                              (Lan == 'ua') ? const Text('Географія',
                                style: TextStyle(
                                  fontSize: 26, color: Color(0xff001489),),) :
                              const Text('地理', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),),
                              const Icon(
                                Icons.map_outlined,
                                color: Color(0xff001489),
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 50),
            SizedBox(
                child: (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Economic Market',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de'|| Lan == 'at')? const Text('Wirtschaftsmarkt',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Marché économique',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'lu')? const Text('Economesche Mäert',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'it'||Lan == 'ch it')? const Text('Mercato economico',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'nl'|| Lan == 'be nl')? const Text('Economische Markt',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'dk')? const Text('Økonomisk marked',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'gr'|| Lan == 'cy gr')? const Text('Οικονομική αγορά',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'es')? const Text('Mercado económico',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'pt')? const Text('Mercado econômico',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'se')? const Text('Ekonomisk marknad',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'fi')? const Text('Taloudellinen markkina',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'ee')? const Text('Majandusturg',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'lv')? const Text('Ekonomikas tirgus',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'lt')? const Text('Ekonominis rinkos',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'pl')? const Text('Rynek ekonomiczny',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'cz')? const Text('Ekonomický trh',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'sk')? const Text('Ekonomický trh',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'hu')? const Text('Gazdasági piac',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'si')? const Text('Gospodarski trg',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'mt')? const Text('Market ekonomiku',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'bg')? const Text('Икономически пазар',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'ro')? const Text('Piața economică',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'hr')? const Text('Ekonomska tržište',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'no')? const Text('Økonomisk marked',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'ru')? const Text('Экономический рынок',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'ua')? const Text('Економічний ринок',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                const Text('経済市場',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),)
            ),
            const SizedBox(height: 18),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
                SizedBox(
                    height:  90,
                    child:  (Lan == 'gb')? Image.asset('assets/ro/gb.png'):
                    (Lan == 'de'||Lan == 'fr'||Lan == 'be de'||Lan == 'lu de'||Lan == 'be fr'||Lan == 'lu fr'
                        ||Lan == 'lu'||Lan == 'it'||Lan == 'nl'||Lan == 'be nl'||Lan == 'ie'||Lan == 'gr'
                        ||Lan == 'cy gr'||Lan == 'es'||Lan == 'pt'||Lan == 'at'||Lan == 'fi'||Lan == 'ee'
                        ||Lan == 'lv'||Lan == 'lt'||Lan == 'sk'||Lan == 'hu'||Lan == 'si'||Lan == 'mt'
                        ||Lan == 'fr'||Lan == 'hr'
                    )? Image.asset('assets/ro/eu.png'):
                    (Lan == 'us')? Image.asset('assets/ro/us.png'):
                    (Lan == 'ch de')? Image.asset('assets/ro/ch.png'):
                    (Lan == 'ch fr')? Image.asset('assets/ro/ch.png'):
                    (Lan == 'ch it')? Image.asset('assets/ro/ch.png'):
                    (Lan == 'dk')? Image.asset('assets/ro/dk.png'):
                    (Lan == 'se')? Image.asset('assets/ro/se.png'):
                    (Lan == 'pl')? Image.asset('assets/ro/pl.png'):
                    (Lan == 'cz')? Image.asset('assets/ro/cz.png'):
                    (Lan == 'bg')? Image.asset('assets/ro/bg.png'):
                    (Lan == 'ro')? Image.asset('assets/ro/ro.png'):
                    (Lan == 'no')? Image.asset('assets/ro/no.png'):
                    (Lan == 'ru')? Image.asset('assets/ro/ru.png'):
                    (Lan == 'ua')? Image.asset('assets/ro/ua.png'):
                    (Lan == 'jp')? Image.asset('assets/ro/jp.png'):
                    Image.asset('assets/ro/jp.png'),
                ),
              Material(
                child: InkWell(
                  onTap: () async {},
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xffEBEDF1),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Transform.rotate(
                            child: const Icon(
                              Icons.play_arrow_sharp,
                              color: Color(0xff001489),
                              size: 20,
                            ),
                            angle: 180 * pi / 180,
                          ),
                          const Icon(
                            Icons.play_arrow_outlined,
                            color: Color(0xff001489),
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
                SizedBox(
                  height: 90,
                  child: (Lan == 'gb')? Image.asset('assets/ro/eu.png'):
                  (Lan == 'de'||Lan == 'fr'||Lan == 'be de'||Lan == 'lu de'||Lan == 'be fr'||Lan == 'lu fr'
                      ||Lan == 'lu'||Lan == 'it'||Lan == 'nl'||Lan == 'be nl'||Lan == 'ie'||Lan == 'gr'
                      ||Lan == 'cy gr'||Lan == 'es'||Lan == 'pt'||Lan == 'at'||Lan == 'fi'||Lan == 'ee'
                      ||Lan == 'lv'||Lan == 'lt'||Lan == 'sk'||Lan == 'hu'||Lan == 'si'||Lan == 'mt'
                      ||Lan == 'fr'||Lan == 'hr'
                  )? Image.asset('assets/ro/gb.png'):
                  (Lan == 'us')? Image.asset('assets/ro/eu.png'):
                  (Lan == 'ch de')? Image.asset('assets/ro/eu.png'):
                  (Lan == 'ch fr')? Image.asset('assets/ro/eu.png'):
                  (Lan == 'ch it')? Image.asset('assets/ro/eu.png'):
                  (Lan == 'dk')? Image.asset('assets/ro/eu.png'):
                  (Lan == 'se')? Image.asset('assets/ro/eu.png'):
                  (Lan == 'pl')? Image.asset('assets/ro/eu.png'):
                  (Lan == 'cz')? Image.asset('assets/ro/eu.png'):
                  (Lan == 'bg')? Image.asset('assets/ro/eu.png'):
                  (Lan == 'ro')? Image.asset('assets/ro/eu.png'):
                  (Lan == 'no')? Image.asset('assets/ro/eu.png'):
                  (Lan == 'ru')? Image.asset('assets/ro/eu.png'):
                  (Lan == 'ua')? Image.asset('assets/ro/eu.png'):
                  (Lan == 'jp')? Image.asset('assets/ro/eu.png'):
                  Image.asset('assets/ro/eu.png'),
                ),
            ],
            ),
            const SizedBox(height: 50),
            SizedBox(
                child:(Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Weather',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de'|| Lan == 'at')? const Text('Wetter',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Météo',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'lu')? const Text('Wieder',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'it'||Lan == 'ch it')? const Text('Meteo',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'nl'|| Lan == 'be nl')? const Text('Weer',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'dk')? const Text('Vejr',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'gr'|| Lan == 'cy gr')? const Text('Καιρός',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'es')? const Text('Tiempo',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'pt')? const Text('Tempo',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'se')? const Text('Väder',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'fi')? const Text('Sää',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'ee')? const Text('Ilm',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'lv')? const Text('Laiks',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'lt')? const Text('Oras',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'pl')? const Text('Pogoda',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'cz')? const Text('Počasí',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'sk')? const Text('Počasie',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'hu')? const Text('Időjárás',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'si')? const Text('Vreme',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'mt')? const Text('Ilma',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'bg')? const Text('Времето',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'ro')? const Text('Vremea',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'hr')? const Text('Vrijeme',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'no')? const Text('Vær',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'ru')? const Text('Погода',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                (Lan == 'ua')? const Text('Погода',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),):
                const Text('天気',
                  style: TextStyle(fontSize: 30, color: Color(
                      0xff333333),),)
            ),
            const SizedBox(height: 18),
            SizedBox(
              child: Text('Choose your city',
                style: TextStyle(fontSize: 18, color: Color(
                    0xff333333),),),
            ),
            Column(
              //コラムのコラム
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 50),
                SizedBox(
                    child:
                    (Lan == 'gb' || Lan == 'us' || Lan == 'ie') ? const Text(
                      'Europe Quiz', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'de' || Lan == 'be de' || Lan == 'ch de' ||
                        Lan == 'lu de' || Lan == 'at') ? const Text(
                      'Europa Quiz', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'fr' || Lan == 'be fr' || Lan == 'lu fr' ||
                        Lan == 'ch fr') ? const Text('Quiz surl Europe',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'lu') ? const Text('Europa Quiz', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'it' || Lan == 'ch it') ? const Text(
                      'Quiz sull Europa', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'nl' || Lan == 'be nl') ? const Text('Europa Quiz',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'dk') ? const Text('Europa Quiz', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'gr' || Lan == 'cy gr') ? const Text(
                      'Κουίζ Ευρώπης',
                      style: TextStyle(fontSize: 30, color: Color(
                          0xff333333),),) :
                    (Lan == 'es') ? const Text('Quiz sobre Europa',
                      style: TextStyle(fontSize: 30, color: Color(
                          0xff333333),),) :
                    (Lan == 'pt') ? const Text('Quiz sobre a Europa',
                      style: TextStyle(fontSize: 30, color: Color(
                          0xff333333),),) :
                    (Lan == 'se') ? const Text('Europa Quiz',
                      style: TextStyle(fontSize: 30, color: Color(
                          0xff333333),),) :
                    (Lan == 'fi') ? const Text(
                      'Eurooppa Quiz', style: TextStyle(fontSize: 30,
                      color: Color(0xff333333),),) :
                    (Lan == 'ee') ? const Text(
                      'Euroopa viktoriin', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'lv') ? const Text('Eiropas kvīz', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'lt') ? const Text(
                      'Europos Kvizas', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'pl') ? const Text('Quiz o Europie',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'cz') ? const Text('Evropský kvíz',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'sk') ? const Text('Europský kvíz',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'hu') ? const Text('Európa Kvíz', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'si') ? const Text('Evropski kviz',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'mt') ? const Text('Quiz tal-Ewropa',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'bg') ? const Text('Европейска квиз',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'ro') ? const Text('Quiz despre Europa',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'hr') ? const Text('Europski kviz',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'no') ? const Text('Europa Quiz', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'ru') ? const Text('Европейский викторин',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Lan == 'ua') ? const Text('Вікторина про Європу',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    const Text('ヨーロッパクイズ', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),)
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
                          onTap: () async {
                            RouteSettings settings = RouteSettings(arguments: Lan);
                            var result = await Navigator.of(context).push(
                              MaterialPageRoute(
                                settings: settings,
                                builder: (context) => Easy(),
                              ),
                            );
                            setState(() {
                              Lan = result as String;
                            });
                          },
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                child:
                                (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Easy',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de'|| Lan == 'at')? const Text('Leicht',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Facile',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'lu')? const Text('Einfach',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'it'||Lan == 'ch it')? const Text('Facile',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'nl'|| Lan == 'be nl')? const Text('Makkelijk',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'dk')? const Text('Let'):
                                (Lan == 'gr'|| Lan == 'cy gr')? const Text('Εύκολος',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'es')? const Text('Fácil',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'pt')? const Text('Fácil',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'se')? const Text('Lätt',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'fi')? const Text('Helppo',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'ee')? const Text('Lihtne',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'lv')? const Text('Viegls',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'lt')? const Text('Lengvas',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'pl')? const Text('Łatwy',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'cz')? const Text('Snadný',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'sk')? const Text('Ľahký',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'hu')? const Text('Könnyű',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'si')? const Text('Enostavno',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'mt')? const Text('Sempliċi',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'bg')? const Text('Лесен',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'ro')? const Text('Ușor',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'hr')? const Text('Lako',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'no')? const Text('Lett',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'ru')? const Text('Легко',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'ua')? const Text('Легко',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                const Text('簡単',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff001489),
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xff001489),
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xff001489),
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xff001489),
                                    size: 20,
                                  ),
                                ],
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
                                child:
                                (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Uncommon',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de'|| Lan == 'at')? const Text('Ungewöhnlich',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Peu commun',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'lu')? const Text('Onik',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'it'||Lan == 'ch it')? const Text('Non comune',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'nl'|| Lan == 'be nl')? const Text('Ongewoon',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'dk')? const Text('Ualmindelig',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'gr'|| Lan == 'cy gr')? const Text('Ασυνήθιστος',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'es')? const Text('Poco común',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'pt')? const Text('Pouco comum',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'se')? const Text('Ovanlig',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'fi')? const Text('Epätavallinen',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'ee')? const Text('Tavatu',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'lv')? const Text('Neparasts',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'lt')? const Text('Neįprastas',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'pl')? const Text('Niezwykły',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'cz')? const Text('Neobvyklý',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'sk')? const Text('Neobvyklý',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'hu')? const Text('Szokatlan',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'si')? const Text('Neobičajno',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'mt')? const Text('Mhux komuni',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'bg')? const Text('Необичаен',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'ro')? const Text('Neobișnuit',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'hr')? const Text('Neobičan',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'no')? const Text('Uvanlig',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'ru')? const Text('Необычный',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'ua')? const Text('Незвичайний',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                const Text('珍しい',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff001489),
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff001489),
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xff001489),
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xff001489),
                                    size: 20,
                                  ),
                                ],
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
                                child:
                                (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Expertise',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de'|| Lan == 'at')? const Text('Fachmann',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Expertise',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'lu')? const Text('Expertise',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'it'||Lan == 'ch it')? const Text('Competenza',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'nl'|| Lan == 'be nl')? const Text('Deskundigheid',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'dk')? const Text('Ekspertise',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'gr'|| Lan == 'cy gr')? const Text('Ειδίκευση',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'es')? const Text('Pericia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'pt')? const Text('Perícia',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'se')? const Text('Expertis',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'fi')? const Text('Asiantuntemus',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'ee')? const Text('Ekspertiis',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'lv')? const Text('Ekspertīze',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'lt')? const Text('Ekspertizė',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'pl')? const Text('Ekspertyza',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'cz')? const Text('Odbornost',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'sk')? const Text('Odbornosť',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'hu')? const Text('Szakértelem',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'si')? const Text('Strokovnost',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'mt')? const Text('Eċċellenza',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'bg')? const Text('Експертиза',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'ro')? const Text('Expertiză',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'hr')? const Text('Stručnost',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'no')? const Text('Ekspertise',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'ru')? const Text('Экспертиза',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'ua')? const Text('Експертиза',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                const Text('専門知識',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff001489),
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff001489),
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff001489),
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xff001489),
                                    size: 20,
                                  ),
                                ],
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
                                child:
                                (Lan == 'gb' || Lan == 'us'|| Lan == 'ie')? const Text('Ultimate',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'de'|| Lan == 'be de'|| Lan == 'ch de'|| Lan == 'lu de'|| Lan == 'at')? const Text('Ultimativ',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'fr'|| Lan == 'be fr'|| Lan == 'lu fr'|| Lan == 'ch fr')? const Text('Ultime',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'lu')? const Text('Ultimat',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'it'||Lan == 'ch it')? const Text('Ultimo',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'nl'|| Lan == 'be nl')? const Text('Ultiem',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'dk')? const Text('Ultimativ'):
                                (Lan == 'gr'|| Lan == 'cy gr')? const Text('Απόλυτος',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'es')? const Text('Definitivo',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'pt')? const Text('Último',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'se')? const Text('Ultimat',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'fi')? const Text('Viimeinen',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'ee')? const Text('Viimane',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'lv')? const Text('Galējais',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'lt')? const Text('Galinis',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'pl')? const Text('Ostateczny',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'cz')? const Text('Ultimátní',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'sk')? const Text('Ultimátne',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'hu')? const Text('Végső',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'si')? const Text('Ultimativno',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'mt')? const Text('Finaħ',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'bg')? const Text('Най-съвършен',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'ro')? const Text('Ultimul',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'hr')? const Text('Krajnji',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'no')? const Text('Ultimate',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'ru')? const Text('Исключительный',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                (Lan == 'ua')? const Text('Найкращий',style: TextStyle(fontSize: 26, color: Color(0xff001489),),):
                                const Text('究極',style: TextStyle(fontSize: 26, color: Color(0xff001489),),),
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff001489),
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff001489),
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff001489),
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff001489),
                                    size: 20,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
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
                    "Translated by ChatGPT",
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
