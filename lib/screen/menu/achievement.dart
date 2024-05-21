import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Achievement extends StatefulWidget {
  const Achievement({super.key});

  @override
  State<Achievement> createState() => _AchievementState();
}

class _AchievementState extends State<Achievement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1C1B1F),
        title: Text(
          'Achievement',
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
              achei="";
              for(int i=0 ;i<acheiv.length; i++)
              {
                setState(() {
                  achei = achei + '\n' + acheiv[i].text;
                });
              }
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
                      acheiv.add(txtskill);
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
                          'Add Achievement',
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
              acheiv.length,
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
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.find_in_page,
                            color: Colors.blue.shade900,
                            size: 25,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: 230,
                            child: TextFormField(
                              controller: acheiv[index],
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                label: Text(
                                  'Achievement',
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
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  acheiv.removeAt(index);
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
String achei ="";
List acheiv = [

];
