import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

TextEditingController txtobject = TextEditingController();

class Objective extends StatefulWidget {
  const Objective({super.key});

  @override
  State<Objective> createState() => _ObjectiveState();
}

class _ObjectiveState extends State<Objective> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1C1B1F),
        title: Text(
          'Objective',
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white,width: 2)
              ),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('${objective[selectindex]}',style: TextStyle(color: Colors.white,fontSize: 16),),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                  objective.length,
                  (index) => InkWell(
                    onTap: () {
                      setState(() {
                        selectindex = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 150,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white,width: 2)
                      ),
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('${objective[index]}',style: TextStyle(color: Colors.grey,fontSize: 16),),
                      ),
                    ),
                  ),

                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

List objective = [
  'Looking for a stimulating role where I can leverage my skills and knowledge to drive positive change and exceed organizational goals.',
  'Passionate about joining a dynamic team where I can utilize my experience and abilities to deliver exceptional results and contribute to the company\'s growth.',
  'Seeking an opportunity to utilize my skills and qualifications in a collaborative environment, making a meaningful impact and advancing my professional journey.',
  'Looking for a fast-paced and challenging role that allows me to leverage my diverse skill set, drive innovation, and create valuable solutions for clients.',
  'To secure a role in a dynamic and demanding setting that values my skills and experience, empowering me to deliver substantial contributions.',
  'Seeking a challenging role in a progressive company that fosters creativity, embraces diversity, and encourages professional development.',
  'Motivated to contribute my expertise and dedication to an organization that values integrity, excellence, and continuous improvement.',
  'Motivated to contribute to the growth and success of a progressive organization by leveraging my strong interpersonal skills and commitment to excellence.',
  'Passionate about making a meaningful impact in a purpose-driven company that prioritizes social responsibility and positive change.',
];
int selectindex =0;
