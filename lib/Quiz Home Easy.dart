import 'package:flutter/material.dart';

class Easy extends StatefulWidget {
  static const routeName = '/Easy';

  @override
  State<Easy> createState() => _EasyState();
}

class _EasyState extends State<Easy> {
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
            ],
          ),
        ),
      ),
    );
  }
}