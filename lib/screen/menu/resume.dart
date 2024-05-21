import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:resume_app/screen/menu/experince.dart';
import 'package:resume_app/screen/menu/achievement.dart';
import 'package:resume_app/screen/menu/education.dart';
import 'package:resume_app/screen/menu/language.dart';
import 'package:resume_app/screen/menu/objective.dart';
import 'package:resume_app/screen/menu/personal.dart';
import 'package:resume_app/screen/menu/reference.dart';
import 'package:resume_app/screen/menu/skill.dart';
import 'package:resume_app/screen/menu/project.dart';


class Resume extends StatefulWidget {
  const Resume({super.key});

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1C1B1F),
        title: Text(
          'Preview',
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
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
          Icon(
            Icons.home_filled,
            color: Colors.blue,
            size: 28,
          ),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/pdf');
              },
              child: Icon(
                Icons.picture_as_pdf,
                color: Colors.blue,
                size: 28,
              ),
            ),
          ),
        ],
        elevation: 1,
        shadowColor: Colors.white,
      ),
      backgroundColor: Color(0xff1C1B1F),
      body: SingleChildScrollView(
        child: Container(
            height: 600,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white, width: 2)),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 596,
                      width: 155,
                      decoration: BoxDecoration(color: Color(0xff1D1F31)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    image: (fileImage != null)
                                        ? DecorationImage(
                                            fit: BoxFit.cover,
                                            image: FileImage(fileImage!))
                                        : DecorationImage(
                                            image: AssetImage(
                                                'Asstes/images/3135715-removebg-preview.png')),
                                    shape: BoxShape.circle,
                                    color: Colors.orange),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 30,
                              width: 155,
                              decoration: BoxDecoration(color: Colors.orange),
                              alignment: Alignment.center,
                              child: Text(
                                'Informartion',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Gender',
                                      style: TextStyle(
                                          color: Colors.orange, fontSize: 15),
                                    ),
                                    TextSpan(
                                      text: ' : ${gender}',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Birth    ',
                                      style: TextStyle(
                                          color: Colors.orange, fontSize: 15),
                                    ),
                                    TextSpan(
                                      text: ' : ${BirthDate}',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Nation ',
                                      style: TextStyle(
                                          color: Colors.orange, fontSize: 15),
                                    ),
                                    TextSpan(
                                      text: ' : ${nation}',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 30,
                              width: 155,
                              decoration: BoxDecoration(color: Colors.orange),
                              alignment: Alignment.center,
                              child: Text(
                                'Contact',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15.0, left: 5),
                              child: Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.phone_circle_fill,
                                    size: 20,
                                    color: Colors.orange,
                                  ),
                                  Text(
                                    ' ${phone}',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10.0, left: 5),
                              child: Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.mail_solid,
                                    size: 20,
                                    color: Colors.orange,
                                  ),
                                  Text(
                                    ' ${email}',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10.0, left: 5),
                              child: Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.location_solid,
                                    size: 20,
                                    color: Colors.orange,
                                  ),
                                  Text(
                                    ' ${address}',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 30,
                              width: 155,
                              decoration: BoxDecoration(color: Colors.orange),
                              alignment: Alignment.center,
                              child: Text(
                                'Skills',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Center(
                              child: Text(
                                '${skills}',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                            SizedBox(height: 6,),
                            Container(
                              height: 30,
                              width: 155,
                              decoration: BoxDecoration(color: Colors.orange),
                              alignment: Alignment.center,
                              child: Text(
                                'Languages',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            ...List.generate(
                                languages.length,
                                (index) => Center(
                                      child: Text(
                                        '${languages[index]}',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '$first',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ' ${last}',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        '${profession}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Objective',
                        style: TextStyle(
                            color: Colors.orange.shade300,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      Container(
                        height: 55,
                        width: 180,
                        alignment: Alignment.center,
                        child: Text(
                          '${objective[selectindex]}',
                          style: TextStyle(color: Colors.black54, fontSize: 10),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Education',
                        style: TextStyle(
                            color: Colors.orange.shade300,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      Column(
                        children: List.generate(
                            education.length,
                            (index) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('${education[index].school.text}',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black87)),
                                        SizedBox(
                                          width: 50,
                                        ),
                                        Text(
                                          '${education[index].firstDate.text} - ${education[index].lastDate.text}',
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ],
                                    ),
                                    Text('${education[index].degree.text}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54)),
                                  ],
                                )
                            // ListTile(
                            //   title:
                            //   subtitle: Text(
                            //     '${education[index].degree.text}',
                            //     style: TextStyle(color: Colors.black54),
                            //   ),
                            //   trailing:
                            // ),
                            ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Experence',
                        style: TextStyle(
                            color: Colors.orange.shade300,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      Column(
                        children: List.generate(
                            experience.length,
                            (index) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                            '${experience[index].companyName!.text}',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black87)),
                                        SizedBox(
                                          width: 50,
                                        ),
                                        Text(
                                          '${experience[index].firstDate!.text} - ${experience[index].lastDate!.text}',
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ],
                                    ),
                                    Text('${experience[index].jobtitle!.text}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54)),
                                  ],
                                )),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Reference',
                        style: TextStyle(
                            color: Colors.orange.shade300,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      Column(
                        children: List.generate(
                            reference.length,
                            (index) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                            '${reference[index].ReferenceName!.text}',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black87)),
                                        SizedBox(
                                          width: 50,
                                        ),
                                        Text(
                                          '${reference[index].phone!.text}',
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ],
                                    ),
                                    Text(
                                        '${reference[index].companyName!.text}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54)),
                                  ],
                                )),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'Projects',
                                style: TextStyle(
                                    color: Colors.orange.shade300,
                                    fontSize: 20)),
                            TextSpan(
                                text: '${project}',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 20))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'Achievement',
                                style: TextStyle(
                                    color: Colors.orange.shade300,
                                    fontSize: 20)),
                            TextSpan(
                                text: '${achei}',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 18)),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
