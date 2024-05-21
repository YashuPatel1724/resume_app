import 'package:flutter/material.dart';
import 'package:resume_app/screen/create.dart';
import 'package:resume_app/screen/menu/achievement.dart';
import 'package:resume_app/screen/menu/experince.dart';
import 'package:resume_app/screen/menu.dart';
import 'package:resume_app/screen/menu/education.dart';
import 'package:resume_app/screen/menu/language.dart';
import 'package:resume_app/screen/menu/objective.dart';
import 'package:resume_app/screen/menu/personal.dart';
import 'package:resume_app/screen/menu/reference.dart';
import 'package:resume_app/screen/menu/skill.dart';
import 'package:resume_app/screen/menu/project.dart';
import 'package:resume_app/screen/menu/resume.dart';
import 'package:resume_app/screen/pdf.dart';
import 'package:resume_app/screen/splash.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => Splash(),
        '/create' : (context) => Create(),
        '/menu' : (context) => MenuScreen(),
        '/info' : (context) => PersonalInfo(),
        '/edu' : (context) =>Education(),
        '/obj' : (context) =>Objective(),
        '/skill' : (context) =>Skills(),
        '/exp' : (context) =>Experience(),
        '/resume' : (context) =>Resume(),
        '/ref' : (context) =>Reference(),
        '/pro' : (context) =>Project(),
        '/lan' : (context) =>Language(),
        '/achi' : (context) =>Achievement(),
        '/pdf' : (context) =>Pdf(),


      },
    );
  }
}
