import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menu/project.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1C1B1F),
        title: Text(
          'CV Maker',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      backgroundColor: Color(0xff1C1B1F),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushNamed('/menu');
          },
          child: Container(
            height: 140,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(CupertinoIcons.add,color: Colors.white,size: 30,),
                  SizedBox(width: 10,),
                  Text('Create New',style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),)
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.white12,)),
            borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 70,
                  child: Icon(Icons.home,color: Colors.white,size: 35,),
                ),
                Text('Home',style: TextStyle(color: Colors.white),),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  child: Icon(Icons.download,color: Colors.white,size: 35,),
                ),
                Text('Download',style: TextStyle(color: Colors.white),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
