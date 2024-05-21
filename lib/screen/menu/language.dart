import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1C1B1F),
        title: Text(
          'Language',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              CupertinoIcons.back,
              color: Colors.white,
            )),
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.black26,
                  content: Center(
                    child: Text(
                      'Saved',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(right: 15),
              height: 35,
              width: 75,
              decoration: BoxDecoration(
                  color: Color(0xff0D47A1),
                  borderRadius: BorderRadius.circular(10)),
              alignment: Alignment.center,
              child: Text(
                'Save',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xff1C1B1F),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xff1C1B1F),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...List.generate(
                        language.length,
                        (index) => CheckboxListTile(
                          activeColor: Colors.blue,
                              value: language[index],
                              title: Text('${languagenames[index]}',style: TextStyle(color: Colors.grey),),
                              onChanged: (value) {
                                setState(() {
                                  language[index] = value;
                                });
                                if(value == true)
                                  {
                                    languages.add(languagenames[index]);
                                  }
                                else{
                                  languages.remove(languagenames[index]);
                                }
                              },
                            ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

List languages = [];

List language = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];

List languagenames = [
  'Afrikaans',
  'Aghem',
  'Akan',
  'Amharic',
  'Arabic',
  'Assamese',
  'Asu',
  'Asturian',
  'Azerbaijani',
  'Basaa',
  'Belarusian',
  'Bemba',
  'Bena',
  'Bulgarian',
  'Bambara',
  'Bangla',
  'Tibetan',
  'Breton',
  'Bodo',
  'Bosnian',
  'Catalan',
  'Chakma',
  'Chechen',
  'Cebuano',
  'Chiga',
  'Cherokee',
  'Central Kurdish',
  'Czech',
  'Welsh',
  'Danish',
  'Taita',
  'German',
  'Zarma',
  'Lower Sorbian',
  'Duala',
  'Jola-Fonyi',
  'Dzongkha',
  'Embu',
  'Ewe',
  'Greek',
  'English',
  'Esperanto',
  'Spanish',
  'Estonian',
  'Basque',
  'Ewondo',
  'Persian',
  'Fulah',
  'Finnish',
  'Filipino',
  'Faroese',
  'French',
  'Friulian',
  'Western Frisian',
  'Irish',
  'Scottish Gaelic',
  'Galician',
  'Swiss German',
  'Gujarati',
  'Gusii',
  'Romanian',
  'Rombo',
  'Russian',
  'Kinyarwanda',
  'Rwa',
  'Sakha',
  'Samburu',
  'Sangu',
  'Sindhi',
  'Northern Sami',
  'Sena',
  'Koyraboro Senni',
  'Sango',
  'Tachelhit',
  'Sinhala',
];
