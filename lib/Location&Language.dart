import 'package:flutter/material.dart';

class language extends StatefulWidget {
  static const routeName = '/language';

  @override
  State<language> createState() => _languageState();
}

class _languageState extends State<language> {
  String Lan = 'gb';
  String? isSelectedItem = 'gb';
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
        body: Container(

          color: const Color(0xffE3E3E3),

          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 130,
                  child:
                  (Lan == 'gb')? Image.asset('assets/ct/gb.png'):
                  (Lan == 'de')? Image.asset('assets/ct/de.png'):
                  (Lan == 'fr')? Image.asset('assets/ct/fr.png'):
                  (Lan == 'us')? Image.asset('assets/ct/us.png'):
                  (Lan == 'be de')? Image.asset('assets/ct/be.png'):
                  (Lan == 'ch de')? Image.asset('assets/ct/ch.png'):
                  (Lan == 'lu de')? Image.asset('assets/ct/lu.png'):
                  (Lan == 'be fr')? Image.asset('assets/ct/be.png'):
                  (Lan == 'lu fr')? Image.asset('assets/ct/lu.png'):
                  (Lan == 'ch fr')? Image.asset('assets/ct/ch.png'):
                  (Lan == 'lu')? Image.asset('assets/ct/lu.png'):
                  (Lan == 'it')? Image.asset('assets/ct/it.png'):
                  (Lan == 'ch it')? Image.asset('assets/ct/ch.png'):
                  (Lan == 'nl')? Image.asset('assets/ct/nl.png'):
                  (Lan == 'be nl')? Image.asset('assets/ct/be.png'):
                  (Lan == 'ie')? Image.asset('assets/ct/ie.png'):
                  (Lan == 'dk')? Image.asset('assets/ct/dk.png'):
                  (Lan == 'gr')? Image.asset('assets/ct/gr.png'):
                  (Lan == 'cy gr')? Image.asset('assets/ct/cy.png'):
                  (Lan == 'es')? Image.asset('assets/ct/es.png'):
                  (Lan == 'pt')? Image.asset('assets/ct/pt.png'):
                  (Lan == 'at')? Image.asset('assets/ct/at.png'):
                  (Lan == 'se')? Image.asset('assets/ct/se.png'):
                  (Lan == 'fi')? Image.asset('assets/ct/fi.png'):
                  (Lan == 'ee')? Image.asset('assets/ct/ee.png'):
                  (Lan == 'lv')? Image.asset('assets/ct/lv.png'):
                  (Lan == 'lt')? Image.asset('assets/ct/lt.png'):
                  (Lan == 'pl')? Image.asset('assets/ct/pl.png'):
                  (Lan == 'cz')? Image.asset('assets/ct/cz.png'):
                  (Lan == 'sk')? Image.asset('assets/ct/sk.png'):
                  (Lan == 'hu')? Image.asset('assets/ct/hu.png'):
                  (Lan == 'si')? Image.asset('assets/ct/si.png'):
                  (Lan == 'mt')? Image.asset('assets/ct/mt.png'):
                  (Lan == 'bg')? Image.asset('assets/ct/bg.png'):
                  (Lan == 'ro')? Image.asset('assets/ct/ro.png'):
                  (Lan == 'hr')? Image.asset('assets/ct/hr.png'):
                  (Lan == 'no')? Image.asset('assets/ct/no.png'):
                  (Lan == 'ru')? Image.asset('assets/ct/ru.png'):
                  (Lan == 'ua')? Image.asset('assets/ct/ua.png'):
                  (Lan == 'jp')? Image.asset('assets/ct/jp.png'):
                  Image.asset('assets/ct/jp.png'),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 200,
                  child: DropdownButton(
                      hint:
                      (Lan == 'gb' || Lan == 'us')? const Text('English (UK)'):
                      (Lan == 'de')? const Text('Deutsch'):
                      (Lan == 'fr')? const Text('Français'):
                      (Lan == 'us')? const Text('English (US)'):
                      (Lan == 'be de')? const Text('Deutsch (Belgien)'):
                      (Lan == 'ch de')? const Text('Deutsch (Schweizerische)'):
                      (Lan == 'lu de')? const Text('Deutsch (Luxemburg)'):
                      (Lan == 'be fr')? const Text('Français (Belgique)'):
                      (Lan == 'lu fr')? const Text('Français (Luxembourg)'):
                      (Lan == 'ch fr')? const Text('Français (Suisse)'):
                      (Lan == 'lu')? const Text('Lëtzebuergesch'):
                      (Lan == 'it')? const Text('Italiano'):
                      (Lan == 'ch it')? const Text('Italiano (Svizzera)'):
                      (Lan == 'nl')? const Text('Nederlands'):
                      (Lan == 'be nl')? const Text('Nederlands (België)'):
                      (Lan == 'ie')? const Text('English (Ireland)'):
                      (Lan == 'dk')? const Text('Dansk'):
                      (Lan == 'gr')? const Text('Ελληνικά'):
                      (Lan == 'cy gr')? const Text('Ελληνικά (Κυπριακή)'):
                      (Lan == 'es')? const Text('Español'):
                      (Lan == 'pt')? const Text('Português'):
                      (Lan == 'at')? const Text('Deutsch (Österreich)'):
                      (Lan == 'se')? const Text('Svenska'):
                      (Lan == 'fi')? const Text('Suomi'):
                      (Lan == 'ee')? const Text('Eesti'):
                      (Lan == 'lv')? const Text('Latviešu valoda'):
                      (Lan == 'lt')? const Text('Lietuvių kalba'):
                      (Lan == 'pl')? const Text('Polski'):
                      (Lan == 'cz')? const Text('Čeština'):
                      (Lan == 'sk')? const Text('Slovenčina'):
                      (Lan == 'hu')? const Text('Magyar'):
                      (Lan == 'si')? const Text('Slovenščina'):
                      (Lan == 'mt')? const Text('Malti'):
                      (Lan == 'bg')? const Text('Български'):
                      (Lan == 'ro')? const Text('Română'):
                      (Lan == 'hr')? const Text('hrvatski'):
                      (Lan == 'no')? const Text('Norsk'):
                      (Lan == 'ru')? const Text('Русский'):
                      (Lan == 'ua')? const Text('Українська'):
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
                      Lan = value!;
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