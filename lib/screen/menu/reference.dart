import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reference extends StatefulWidget {
  const Reference({super.key});

  @override
  State<Reference> createState() => _ReferenceState();
}

class _ReferenceState extends State<Reference> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1C1B1F),
        title: Text(
          'Reference',
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
                TextEditingController txtphone = TextEditingController();
                TextEditingController txtrefer = TextEditingController();
                TextEditingController txtcompany = TextEditingController();
                setState(() {
                  reference.add(ReferenceModal(
                    ReferenceName: txtrefer,
                      jobtitle: txtjob,
                      companyName: txtcompany,
                      phone: txtphone,
                  ));
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
                        'Reference',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
            ),
            ...List.generate(
              reference.length,
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
                              Icons.room_preferences,
                              color: Colors.blue.shade900,
                              size: 25,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            SizedBox(
                              width: 210,
                              child: TextFormField(
                                controller: reference[index].ReferenceName,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  label: Text(
                                    'Reference Name',
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
                                controller: reference[index].jobtitle,
                                style: TextStyle(color: Colors.white),
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
                                controller: reference[index].companyName,
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
                              Icons.call,
                              color: Colors.blue.shade900,
                              size: 25,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            SizedBox(
                              width: 210,
                              child: TextFormField(
                                controller: reference[index].phone,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  label: Text(
                                    'Phone',
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
                                      reference.removeAt(index);
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
List<ReferenceModal> reference = [

];

class ReferenceModal {
  TextEditingController? ReferenceName;
  TextEditingController? jobtitle;
  TextEditingController? companyName;
  TextEditingController? phone;

  ReferenceModal({this.ReferenceName, this.jobtitle, this.companyName, this.phone});
}
