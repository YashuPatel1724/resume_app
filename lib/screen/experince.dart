import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1C1B1F),
        title: Text(
          'Education',
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
            InkWell(
              onTap: () {
                TextEditingController txtjob = TextEditingController();
                TextEditingController txtfirstDate = TextEditingController();
                TextEditingController txtlastDate = TextEditingController();
                TextEditingController txtcompany = TextEditingController();
                setState(() {
                  experience.add(ExperienceModal(
                      jobtitle: txtjob,
                      companyName: txtcompany,
                      firstDate: txtfirstDate,
                      lastDate: txtlastDate));
                });
              },
              child: Center(
                child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade900,
                      borderRadius: BorderRadius.circular(20)),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      Text(
                        'Experience',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
            ),
            ...List.generate(
              experience.length,
                  (index) => Center(
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 370,
                  width: 280,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white, width: 3)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
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
                              width: 15,
                            ),
                            SizedBox(
                              width: 210,
                              child: TextFormField(
                                controller: experience[index].jobtitle,
                                style: TextStyle(color: Colors.white),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return ' value must be requried';
                                  }
                                },
                                decoration: InputDecoration(
                                  label: Text(
                                    'Job Title',
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
                        Row(
                          children: [
                            Icon(
                              Icons.apartment,
                              color: Colors.blue.shade900,
                              size: 25,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            SizedBox(
                              width: 210,
                              child: TextFormField(
                                controller: experience[index].companyName,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  label: Text(
                                    'Company Name',
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
                        Row(
                          children: [
                            Icon(
                              Icons.date_range_outlined,
                              color: Colors.blue.shade900,
                              size: 25,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            SizedBox(
                              width: 210,
                              child: TextFormField(
                                controller: experience[index].firstDate,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  label: Text(
                                    'Start Date',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.number,
                                cursorColor: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.date_range_outlined,
                              color: Colors.blue.shade900,
                              size: 25,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            SizedBox(
                              width: 210,
                              child: TextFormField(
                                controller: experience[index].lastDate,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  label: Text(
                                    'Last Date',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.number,
                                cursorColor: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Row(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    setState(() {
                                      experience.removeAt(index);
                                    });
                                  },
                                  child: Text(
                                    'cancle',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      // floatingActionButton: InkWell(
      //   onTap: () {
      //     Navigator.of(context).pushNamed('/resume');
      //   },
      //   child: Container(
      //     height: 50,
      //     width: 90,
      //     decoration: BoxDecoration(
      //       color: Colors.blue,
      //       borderRadius: BorderRadius.circular(20),
      //     ),
      //     alignment: Alignment.center,
      //     child: Text(
      //       'View CV',
      //       style: TextStyle(color: Colors.white, fontSize: 15),
      //     ),
      //   ),
      // ),
    );
  }
}
List experience = [

];

class ExperienceModal {
  TextEditingController? jobtitle;
  TextEditingController? companyName;
  TextEditingController? firstDate;
  TextEditingController? lastDate;

  ExperienceModal({this.jobtitle, this.companyName, this.firstDate, this.lastDate});
}
