import 'dart:async';

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 20), () {
      Navigator.of(context).pushReplacementNamed('/create');
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold
      (backgroundColor: Color(0xff1C1B1F),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('Asstes/images/r-removebg-preview.png'),
              SizedBox(height: 10,),
              Text('CV Maker',style:TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold,letterSpacing: 3),)
            ],
          ),
        )
      ),
    );
  }
}
