import 'package:flutter/material.dart';
import 'package:resume_app/screen/experince.dart';
import 'package:resume_app/screen/menu.dart';
import 'package:resume_app/screen/menu/education.dart';
import 'package:resume_app/screen/menu/objective.dart';
import 'package:resume_app/screen/menu/personal.dart';
import 'package:resume_app/screen/menu/reference.dart';
import 'package:resume_app/screen/menu/skill.dart';
import 'package:resume_app/screen/project.dart';
import 'package:resume_app/screen/resume.dart';

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
      initialRoute: '/resume',
      routes: {
        '/' : (context) => MenuScreen(),
        '/info' : (context) => PersonalInfo(),
        '/edu' : (context) =>Education(),
        '/obj' : (context) =>Objective(),
        '/skill' : (context) =>Skills(),
        '/exp' : (context) =>Experience(),
        '/resume' : (context) =>Resume(),
        '/ref' : (context) =>Reference(),
        '/pro' : (context) =>Project(),

      },
    );
  }
}
