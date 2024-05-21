

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1C1B1F),
        title: Text(
          'Skill',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        leading: InkWell(
            onTap :() {
              Navigator.of(context).pop();
            },
            child: Icon(CupertinoIcons.back,color: Colors.white,)),
        actions: [
          InkWell(
            onTap: () {
              skills="";
              for(int i=0 ;i<skill.length; i++)
              {
                setState(() {
                  skills = skills + '\n' + skill[i].text;
                });
              }
              print('${skills}');
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: InkWell(
                  onTap: () {
                    TextEditingController txtskill = TextEditingController();
                    setState(() {
                      skill.add(txtskill);
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade900,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Add Skill',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ...List.generate(
              skill.length,
              (index) => Container(
                margin: EdgeInsets.all(10),
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white, width: 2)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.work,
                          color: Colors.blue.shade900,
                          size: 25,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 230,
                          child: TextFormField(
                            controller: skill[index],
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              label: Text(
                                'skill',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.name,
                            cursorColor: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  skill.removeAt(index);
                                });
                              },
                              child: Text(
                                'Delete',
                                style: TextStyle(color: Colors.grey, fontSize: 18),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

String skills ="";
List skill = [

];
