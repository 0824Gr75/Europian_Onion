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
    return Locale(languageCode ?? 'en');
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
      return const CircularProgressIndicator();
    } else {
      return MaterialApp(
        locale: _locale,
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('en'),
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
  var Loc = 'gb';

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
          SizedBox(
          height: 20,
          child:
          ( widget.onLanguageChanged == 'gb')? Image.asset('assets/ct/gb.png'):
          ( widget.onLanguageChanged == 'de')? Image.asset('assets/ct/de.png'):
          ( widget.onLanguageChanged == 'fr')? Image.asset('assets/ct/fr.png'):
          ( widget.onLanguageChanged == 'us')? Image.asset('assets/ct/us.png'):
          ( widget.onLanguageChanged == 'debe')? Image.asset('assets/ct/be.png'):
          ( widget.onLanguageChanged == 'dech')? Image.asset('assets/ct/ch.png'):
          ( widget.onLanguageChanged == 'delu')? Image.asset('assets/ct/lu.png'):
          ( widget.onLanguageChanged == 'frbe')? Image.asset('assets/ct/be.png'):
          ( widget.onLanguageChanged == 'frlu')? Image.asset('assets/ct/lu.png'):
          ( widget.onLanguageChanged == 'frch')? Image.asset('assets/ct/ch.png'):
          ( widget.onLanguageChanged == 'lu')? Image.asset('assets/ct/lu.png'):
          ( widget.onLanguageChanged == 'it')? Image.asset('assets/ct/it.png'):
          ( widget.onLanguageChanged == 'itch')? Image.asset('assets/ct/ch.png'):
          ( widget.onLanguageChanged == 'nl')? Image.asset('assets/ct/nl.png'):
          ( widget.onLanguageChanged == 'nlbe')? Image.asset('assets/ct/be.png'):
          ( widget.onLanguageChanged == 'ie')? Image.asset('assets/ct/ie.png'):
          ( widget.onLanguageChanged == 'dk')? Image.asset('assets/ct/dk.png'):
          ( widget.onLanguageChanged == 'gr')? Image.asset('assets/ct/gr.png'):
          ( widget.onLanguageChanged == 'grcy')? Image.asset('assets/ct/cy.png'):
          ( widget.onLanguageChanged == 'es')? Image.asset('assets/ct/es.png'):
          ( widget.onLanguageChanged == 'pt')? Image.asset('assets/ct/pt.png'):
          ( widget.onLanguageChanged == 'at')? Image.asset('assets/ct/at.png'):
          ( widget.onLanguageChanged == 'se')? Image.asset('assets/ct/se.png'):
          ( widget.onLanguageChanged == 'fi')? Image.asset('assets/ct/fi.png'):
          ( widget.onLanguageChanged == 'ee')? Image.asset('assets/ct/ee.png'):
          ( widget.onLanguageChanged == 'lv')? Image.asset('assets/ct/lv.png'):
          ( widget.onLanguageChanged == 'lt')? Image.asset('assets/ct/lt.png'):
          ( widget.onLanguageChanged == 'pl')? Image.asset('assets/ct/pl.png'):
          ( widget.onLanguageChanged == 'cz')? Image.asset('assets/ct/cz.png'):
          ( widget.onLanguageChanged == 'sk')? Image.asset('assets/ct/sk.png'):
          ( widget.onLanguageChanged == 'hu')? Image.asset('assets/ct/hu.png'):
          ( widget.onLanguageChanged == 'si')? Image.asset('assets/ct/si.png'):
          ( widget.onLanguageChanged == 'mt')? Image.asset('assets/ct/mt.png'):
          ( widget.onLanguageChanged == 'bg')? Image.asset('assets/ct/bg.png'):
          ( widget.onLanguageChanged == 'ro')? Image.asset('assets/ct/ro.png'):
          ( widget.onLanguageChanged == 'hr')? Image.asset('assets/ct/hr.png'):
          ( widget.onLanguageChanged == 'no')? Image.asset('assets/ct/no.png'):
          ( widget.onLanguageChanged == 'ru')? Image.asset('assets/ct/ru.png'):
          ( widget.onLanguageChanged == 'ua')? Image.asset('assets/ct/ua.png'):
          ( widget.onLanguageChanged == 'ja')? Image.asset('assets/ct/jp.png'):
          Image.asset('assets/ct/jp.png'),
            ),
            DropdownButton<String>(
              items: [
                DropdownMenuItem(value: 'gb', child: Text('English (UK)'),),
                DropdownMenuItem(value: 'us', child: Text('English (US)'),),
                DropdownMenuItem(value: 'ie', child: Text('English (Ireland)'),),
                DropdownMenuItem(value: 'de', child: Text('Deutsch'),),
                DropdownMenuItem(value: "debe", child: Text('Deutsch (Belgien)'),),
                DropdownMenuItem(value: 'dech', child: Text('Deutsch (Schweizerische)'),),
                DropdownMenuItem(value: 'delu', child: Text('Deutsch (Luxemburg)'), ),
                DropdownMenuItem(value: 'at', child: Text('Deutsch (Österreich)'), ),
                DropdownMenuItem(value: 'fr', child: Text('Français'),),
                DropdownMenuItem(value: 'frbe', child: Text('Français (Belgique)'),),
                DropdownMenuItem(value: 'frlu', child: Text('Français (Luxembourg)'),),
                DropdownMenuItem(value: 'frch', child: Text('Français (Suisse)'),),
                DropdownMenuItem(value: 'it', child: Text('Italiano'),),
                DropdownMenuItem(value: 'itch', child: Text('Italiano (Svizzera)'),),
                DropdownMenuItem(value: 'nl', child: Text('Nederlands'),),
                DropdownMenuItem(value: 'nlbe', child: Text('Nederlands (België)'),),
                DropdownMenuItem(value: 'lu', child: Text('Lëtzebuergesch'),),
                DropdownMenuItem(value: 'dk', child: Text('Dansk'),),
                DropdownMenuItem(value: 'gr', child: Text('Ελληνικά'),),
                DropdownMenuItem(value: 'grcy', child: Text('Ελληνικά (Κυπριακή)'),),
                DropdownMenuItem(value: 'es', child: Text('Español'),),
                DropdownMenuItem(value: 'pt', child: Text('Português'),),
                DropdownMenuItem(value: 'se', child: Text('Svenska'),),
                DropdownMenuItem(value: 'fi', child: Text('Suomi'),),
                DropdownMenuItem(value: 'ee', child: Text('Eesti'),),
                DropdownMenuItem(value: 'lv', child: Text('Latviešu valoda'),),
                DropdownMenuItem(value: 'lt', child: Text('Lietuvių kalba'),),
                DropdownMenuItem(value: 'pl', child: Text('Polski'),),
                DropdownMenuItem(value: 'cz', child: Text('Čeština'),),
                DropdownMenuItem(value: 'sk', child: Text('Slovenčina'),),
                DropdownMenuItem(value: 'hu', child: Text('Magyar'),),
                DropdownMenuItem(value: 'si', child: Text('Slovenščina'),),
                DropdownMenuItem(value: 'mt', child: Text('Malti'),),
                DropdownMenuItem(value: 'bg', child: Text('Български'),),
                DropdownMenuItem(value: 'ro', child: Text('Română'),),
                DropdownMenuItem(value: 'hr', child: Text('hrvatski'),),
                DropdownMenuItem(value: 'no', child: Text('Norsk'),),
                DropdownMenuItem(value: 'ru', child: Text('Русский'),),
                DropdownMenuItem(value: 'ua', child: Text('Українська'),),
                DropdownMenuItem(value: 'ja', child: Text('日本語'),),
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
                child: Text(
                  AppLocalizations.of(context)!.euhello,
                  style: TextStyle(
                    fontSize: 40, color: Color(0xffffd617),),
                ),
              )
            ),
            Column(
              //コラムのコラム
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 50),
                SizedBox(
                    child: (Loc == 'gb' || Loc == 'us' || Loc == 'ie')
                        ? const Text(' Learn about us', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),)
                        :
                    (Loc == 'de' || Loc == 'be de' || Loc == 'ch de' ||
                        Loc == 'lu de' || Loc == 'at') ? const Text(
                      '  Erfahren Sie mehr über uns', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),) :
                    (Loc == 'fr' || Loc == 'be fr' || Loc == 'lu fr' ||
                        Loc == 'ch fr') ? const Text(
                      '  En savoir plus sur nous', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),) :
                    (Loc == 'lu') ? const Text(' Erfahren iwwert eis',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Loc == 'it' || Loc == 'ch it') ? const Text(
                      ' Scopri di più su di noi', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),) :
                    (Loc == 'nl' || Loc == 'be nl') ? const Text(
                      '  Leer meer over ons', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),) :
                    (Loc == 'dk') ? const Text(' Lær om os', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),) :
                    (Loc == 'gr' || Loc == 'cy gr') ? const Text(
                      '  Μάθετε για εμάς',
                      style: TextStyle(fontSize: 30, color: Color(
                          0xff333333),),) :
                    (Loc == 'es') ? const Text(' Conoce más sobre nosotros',
                      style: TextStyle(fontSize: 30, color: Color(
                          0xff333333),),) :
                    (Loc == 'pt') ? const Text(' Saiba mais sobre nós',
                      style: TextStyle(fontSize: 30, color: Color(
                          0xff333333),),) :
                    (Loc == 'se') ? const Text(' Lär dig mer om oss',
                      style: TextStyle(fontSize: 30, color: Color(
                          0xff333333),),) :
                    (Loc == 'fi') ? const Text(
                      ' Tutustu meihin tarkemmin', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),) :
                    (Loc == 'ee') ? const Text(
                      ' Uuri meie kohta rohkem', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),) :
                    (Loc == 'lv') ? const Text(
                      ' Uzzini vairāk par mums', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),) :
                    (Loc == 'lt') ? const Text(
                      ' Sužinokite daugiau apie mus', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),) :
                    (Loc == 'pl') ? const Text(' Dowiedz się więcej o nas',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Loc == 'cz') ? const Text(' Dozvědět se více o nás',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Loc == 'sk') ? const Text(' Dozviete sa viac o nás',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Loc == 'hu') ? const Text(' Tudj meg többet rólunk',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Loc == 'si') ? const Text(' Pojdite več o nas',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Loc == 'mt') ? const Text(' Ikkomplu dwarina',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Loc == 'bg') ? const Text(' Научете повече за нас',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Loc == 'ro') ? const Text(' Aflați mai multe despre noi',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Loc == 'hr') ? const Text(' Saznajte više o nama',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Loc == 'no') ? const Text(' Lær mer om oss',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Loc == 'ru') ? const Text(' Узнайте больше о нас',
                      style: TextStyle(
                        fontSize: 30, color: Color(0xff333333),),) :
                    (Loc == 'ua') ? const Text(' Дізнайтеся більше про нас',
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
                            RouteSettings settings = RouteSettings(arguments: Loc);
                            var result = await Navigator.of(context).push(
                              MaterialPageRoute(
                                settings: settings,
                                builder: (context) => Institution(),
                              ),
                            );
                            setState(() {
                              Loc = result as String;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              (Loc == 'gb' || Loc == 'us'|| Loc == 'ie')? const Text('Institutions', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Loc == 'de'|| Loc == 'be de'|| Loc == 'ch de'|| Loc == 'lu de'|| Loc == 'at')? const Text('Institutionen', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Loc == 'fr'|| Loc == 'be fr'|| Loc == 'lu fr'|| Loc == 'ch fr')? const Text('Institutions', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Loc == 'lu')? const Text('Institutiounen', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Loc == 'it'||Loc == 'ch it')? const Text('Istituzioni', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Loc == 'nl'|| Loc == 'be nl')? const Text('Instellingen', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Loc == 'dk')? const Text('Institutioner', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Loc == 'gr'|| Loc == 'cy gr')? const Text('Θεσμικά όργανα', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Loc == 'es')? const Text('Instituciones', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Loc == 'pt')? const Text('Instituições', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Loc == 'se')? const Text('Institutioner', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Loc == 'fi')? const Text('Instituutiot', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Loc == 'ee')? const Text('Asutused', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Loc == 'lv')? const Text('Iestādes', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Loc == 'lt')? const Text('Institucijos', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Loc == 'pl')? const Text('Instytucje', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Loc == 'cz')? const Text('Instituce', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Loc == 'sk')? const Text('Inštitúcie', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Loc == 'hu')? const Text('Intézmények', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Loc == 'si')? const Text('Ustanove', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Loc == 'mt')? const Text('Istituzzjonijiet', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Loc == 'bg')? const Text('Институции', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Loc == 'ro')? const Text('Instituții', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Loc == 'hr')? const Text('Institucije', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Loc == 'no')? const Text('Institusjoner', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Loc == 'ru')? const Text('Институты', style: TextStyle(
                                fontSize: 26, color: Color(0xff001489),),):
                              (Loc == 'ua')? const Text('Установи', style: TextStyle(
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
                            RouteSettings settings = RouteSettings(arguments: Loc);
                            var result = await Navigator.of(context).push(
                              MaterialPageRoute(
                                settings: settings,
                                builder: (context) => Geography(),
                              ),
                            );
                            setState(() {
                              Loc = result as String;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[Text('Geography', style: TextStyle(fontSize: 26, color: Color(0xff001489),),
                            ),
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
                child: Text('Economic Market', style: TextStyle(fontSize: 30, color: Color(0xff333333),),
                ),
            ),
            const SizedBox(height: 18),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
                SizedBox(
                    height:  90,
                    child:  (Loc == 'gb')? Image.asset('assets/ro/gb.png'):
                    (Loc == 'de'||Loc == 'fr'||Loc == 'be de'||Loc == 'lu de'||Loc == 'be fr'||Loc == 'lu fr'
                        ||Loc == 'lu'||Loc == 'it'||Loc == 'nl'||Loc == 'be nl'||Loc == 'ie'||Loc == 'gr'
                        ||Loc == 'cy gr'||Loc == 'es'||Loc == 'pt'||Loc == 'at'||Loc == 'fi'||Loc == 'ee'
                        ||Loc == 'lv'||Loc == 'lt'||Loc == 'sk'||Loc == 'hu'||Loc == 'si'||Loc == 'mt'
                        ||Loc == 'fr'||Loc == 'hr'
                    )? Image.asset('assets/ro/eu.png'):
                    (Loc == 'us')? Image.asset('assets/ro/us.png'):
                    (Loc == 'ch de')? Image.asset('assets/ro/ch.png'):
                    (Loc == 'ch fr')? Image.asset('assets/ro/ch.png'):
                    (Loc == 'ch it')? Image.asset('assets/ro/ch.png'):
                    (Loc == 'dk')? Image.asset('assets/ro/dk.png'):
                    (Loc == 'se')? Image.asset('assets/ro/se.png'):
                    (Loc == 'pl')? Image.asset('assets/ro/pl.png'):
                    (Loc == 'cz')? Image.asset('assets/ro/cz.png'):
                    (Loc == 'bg')? Image.asset('assets/ro/bg.png'):
                    (Loc == 'ro')? Image.asset('assets/ro/ro.png'):
                    (Loc == 'no')? Image.asset('assets/ro/no.png'):
                    (Loc == 'ru')? Image.asset('assets/ro/ru.png'):
                    (Loc == 'ua')? Image.asset('assets/ro/ua.png'):
                    (Loc == 'jp')? Image.asset('assets/ro/jp.png'):
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
                  child: (Loc == 'gb')? Image.asset('assets/ro/eu.png'):
                  (Loc == 'de'||Loc == 'fr'||Loc == 'be de'||Loc == 'lu de'||Loc == 'be fr'||Loc == 'lu fr'
                      ||Loc == 'lu'||Loc == 'it'||Loc == 'nl'||Loc == 'be nl'||Loc == 'ie'||Loc == 'gr'
                      ||Loc == 'cy gr'||Loc == 'es'||Loc == 'pt'||Loc == 'at'||Loc == 'fi'||Loc == 'ee'
                      ||Loc == 'lv'||Loc == 'lt'||Loc == 'sk'||Loc == 'hu'||Loc == 'si'||Loc == 'mt'
                      ||Loc == 'fr'||Loc == 'hr'
                  )? Image.asset('assets/ro/gb.png'):
                  (Loc == 'us')? Image.asset('assets/ro/eu.png'):
                  (Loc == 'ch de')? Image.asset('assets/ro/eu.png'):
                  (Loc == 'ch fr')? Image.asset('assets/ro/eu.png'):
                  (Loc == 'ch it')? Image.asset('assets/ro/eu.png'):
                  (Loc == 'dk')? Image.asset('assets/ro/eu.png'):
                  (Loc == 'se')? Image.asset('assets/ro/eu.png'):
                  (Loc == 'pl')? Image.asset('assets/ro/eu.png'):
                  (Loc == 'cz')? Image.asset('assets/ro/eu.png'):
                  (Loc == 'bg')? Image.asset('assets/ro/eu.png'):
                  (Loc == 'ro')? Image.asset('assets/ro/eu.png'):
                  (Loc == 'no')? Image.asset('assets/ro/eu.png'):
                  (Loc == 'ru')? Image.asset('assets/ro/eu.png'):
                  (Loc == 'ua')? Image.asset('assets/ro/eu.png'):
                  (Loc == 'jp')? Image.asset('assets/ro/eu.png'):
                  Image.asset('assets/ro/eu.png'),
                ),
            ],
            ),
            const SizedBox(height: 50),
            SizedBox(
              child: Text('Weather',style: TextStyle(fontSize: 30, color: Color(0xff333333),),
            ),
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
                    child:Text(
                      'Europe Quiz', style: TextStyle(
                      fontSize: 30, color: Color(0xff333333),),
                    ),
                ),
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
                            RouteSettings settings = RouteSettings(arguments: Loc);
                            var result = await Navigator.of(context).push(
                              MaterialPageRoute(
                                settings: settings,
                                builder: (context) => Easy(),
                              ),
                            );
                            setState(() {
                              Loc = result as String;
                            });
                          },
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                child:Text('Easy',style: TextStyle(fontSize: 26, color: Color(0xff001489),),
                                ),
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
                                child:Text('Uncommon',style: TextStyle(fontSize: 26, color: Color(0xff001489),),
                                ),
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
                                child:Text('Expertise',style: TextStyle(fontSize: 26, color: Color(0xff001489),),
                                ),
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
                                child:Text('Expertise',style: TextStyle(fontSize: 26, color: Color(0xff001489),),
                                ),
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
