import 'package:flutter/material.dart';

class language extends StatefulWidget {
  static const routeName = '/language';

  @override
  State<language> createState() => _languageState();
}

class _languageState extends State<language> {
  String Loc= 'gb';
  String? isSelectedItem = 'gb';
  Object? args;

    @override
    Widget build(BuildContext context) {
      if (args == null) {
        args = ModalRoute.of(context)!.settings.arguments;
        Loc= args as String;
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
                Navigator.of(context).pop(Loc);
              },
            ),
          ],
          elevation: 10,
          automaticallyImplyLeading: false,
        ),
        body: Container(

          color: const Color(0xffE3E3E3),

          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 130,
                  child:
                  (Loc== 'gb')? Image.asset('assets/ct/gb.png'):
                  (Loc== 'de')? Image.asset('assets/ct/de.png'):
                  (Loc== 'fr')? Image.asset('assets/ct/fr.png'):
                  (Loc== 'us')? Image.asset('assets/ct/us.png'):
                  (Loc== 'be de')? Image.asset('assets/ct/be.png'):
                  (Loc== 'ch de')? Image.asset('assets/ct/ch.png'):
                  (Loc== 'lu de')? Image.asset('assets/ct/lu.png'):
                  (Loc== 'be fr')? Image.asset('assets/ct/be.png'):
                  (Loc== 'lu fr')? Image.asset('assets/ct/lu.png'):
                  (Loc== 'ch fr')? Image.asset('assets/ct/ch.png'):
                  (Loc== 'lu')? Image.asset('assets/ct/lu.png'):
                  (Loc== 'it')? Image.asset('assets/ct/it.png'):
                  (Loc== 'ch it')? Image.asset('assets/ct/ch.png'):
                  (Loc== 'nl')? Image.asset('assets/ct/nl.png'):
                  (Loc== 'be nl')? Image.asset('assets/ct/be.png'):
                  (Loc== 'ie')? Image.asset('assets/ct/ie.png'):
                  (Loc== 'dk')? Image.asset('assets/ct/dk.png'):
                  (Loc== 'gr')? Image.asset('assets/ct/gr.png'):
                  (Loc== 'cy gr')? Image.asset('assets/ct/cy.png'):
                  (Loc== 'es')? Image.asset('assets/ct/es.png'):
                  (Loc== 'pt')? Image.asset('assets/ct/pt.png'):
                  (Loc== 'at')? Image.asset('assets/ct/at.png'):
                  (Loc== 'se')? Image.asset('assets/ct/se.png'):
                  (Loc== 'fi')? Image.asset('assets/ct/fi.png'):
                  (Loc== 'ee')? Image.asset('assets/ct/ee.png'):
                  (Loc== 'lv')? Image.asset('assets/ct/lv.png'):
                  (Loc== 'lt')? Image.asset('assets/ct/lt.png'):
                  (Loc== 'pl')? Image.asset('assets/ct/pl.png'):
                  (Loc== 'cz')? Image.asset('assets/ct/cz.png'):
                  (Loc== 'sk')? Image.asset('assets/ct/sk.png'):
                  (Loc== 'hu')? Image.asset('assets/ct/hu.png'):
                  (Loc== 'si')? Image.asset('assets/ct/si.png'):
                  (Loc== 'mt')? Image.asset('assets/ct/mt.png'):
                  (Loc== 'bg')? Image.asset('assets/ct/bg.png'):
                  (Loc== 'ro')? Image.asset('assets/ct/ro.png'):
                  (Loc== 'hr')? Image.asset('assets/ct/hr.png'):
                  (Loc== 'no')? Image.asset('assets/ct/no.png'):
                  (Loc== 'ru')? Image.asset('assets/ct/ru.png'):
                  (Loc== 'ua')? Image.asset('assets/ct/ua.png'):
                  (Loc== 'jp')? Image.asset('assets/ct/jp.png'):
                  Image.asset('assets/ct/jp.png'),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 200,
                  child: DropdownButton(
                      hint:
                      (Loc== 'gb' || Loc== 'us')? const Text('English (UK)'):
                      (Loc== 'de')? const Text('Deutsch'):
                      (Loc== 'fr')? const Text('Français'):
                      (Loc== 'us')? const Text('English (US)'):
                      (Loc== 'be de')? const Text('Deutsch (Belgien)'):
                      (Loc== 'ch de')? const Text('Deutsch (Schweizerische)'):
                      (Loc== 'lu de')? const Text('Deutsch (Luxemburg)'):
                      (Loc== 'be fr')? const Text('Français (Belgique)'):
                      (Loc== 'lu fr')? const Text('Français (Luxembourg)'):
                      (Loc== 'ch fr')? const Text('Français (Suisse)'):
                      (Loc== 'lu')? const Text('Lëtzebuergesch'):
                      (Loc== 'it')? const Text('Italiano'):
                      (Loc== 'ch it')? const Text('Italiano (Svizzera)'):
                      (Loc== 'nl')? const Text('Nederlands'):
                      (Loc== 'be nl')? const Text('Nederlands (België)'):
                      (Loc== 'ie')? const Text('English (Ireland)'):
                      (Loc== 'dk')? const Text('Dansk'):
                      (Loc== 'gr')? const Text('Ελληνικά'):
                      (Loc== 'cy gr')? const Text('Ελληνικά (Κυπριακή)'):
                      (Loc== 'es')? const Text('Español'):
                      (Loc== 'pt')? const Text('Português'):
                      (Loc== 'at')? const Text('Deutsch (Österreich)'):
                      (Loc== 'se')? const Text('Svenska'):
                      (Loc== 'fi')? const Text('Suomi'):
                      (Loc== 'ee')? const Text('Eesti'):
                      (Loc== 'lv')? const Text('Latviešu valoda'):
                      (Loc== 'lt')? const Text('Lietuvių kalba'):
                      (Loc== 'pl')? const Text('Polski'):
                      (Loc== 'cz')? const Text('Čeština'):
                      (Loc== 'sk')? const Text('Slovenčina'):
                      (Loc== 'hu')? const Text('Magyar'):
                      (Loc== 'si')? const Text('Slovenščina'):
                      (Loc== 'mt')? const Text('Malti'):
                      (Loc== 'bg')? const Text('Български'):
                      (Loc== 'ro')? const Text('Română'):
                      (Loc== 'hr')? const Text('hrvatski'):
                      (Loc== 'no')? const Text('Norsk'):
                      (Loc== 'ru')? const Text('Русский'):
                      (Loc== 'ua')? const Text('Українська'):
                      const Text('日本語'),
                    items: const [
                      DropdownMenuItem(value: 'gb', child: Text('English (UK)'),),
                      DropdownMenuItem(value: 'us', child: Text('English (US)'),),
                      DropdownMenuItem(value: 'ie', child: Text('English (Ireland)'),),
                      DropdownMenuItem(value: 'de', child: Text('Deutsch'),),
                      DropdownMenuItem(value: "be de", child: Text('Deutsch (Belgien)'),),
                      DropdownMenuItem(value: 'ch de', child: Text('Deutsch (Schweizerische)'),),
                      DropdownMenuItem(value: 'lu de', child: Text('Deutsch (Luxemburg)'), ),
                      DropdownMenuItem(value: 'at', child: Text('Deutsch (Österreich)'), ),
                      DropdownMenuItem(value: 'fr', child: Text('Français'),),
                      DropdownMenuItem(value: 'be fr', child: Text('Français (Belgique)'),),
                      DropdownMenuItem(value: 'lu fr', child: Text('Français (Luxembourg)'),),
                      DropdownMenuItem(value: 'ch fr', child: Text('Français (Suisse)'),),
                      DropdownMenuItem(value: 'it', child: Text('Italiano'),),
                      DropdownMenuItem(value: 'ch it', child: Text('Italiano (Svizzera)'),),
                      DropdownMenuItem(value: 'nl', child: Text('Nederlands'),),
                      DropdownMenuItem(value: 'be nl', child: Text('Nederlands (België)'),),
                      DropdownMenuItem(value: 'lu', child: Text('Lëtzebuergesch'),),
                      DropdownMenuItem(value: 'dk', child: Text('Dansk'),),
                      DropdownMenuItem(value: 'gr', child: Text('Ελληνικά'),),
                      DropdownMenuItem(value: 'cy gr', child: Text('Ελληνικά (Κυπριακή)'),),
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
                      DropdownMenuItem(value: 'jp', child: Text('日本語'),),
                    ],
                    onChanged: (String? value) {
                      setState(() {
                        isSelectedItem = value;
                      });
                      Loc= value!;
                    },
                    value: isSelectedItem,
                    isExpanded: true,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      );
    }
  }