import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1B1F),
      appBar: AppBar(
        backgroundColor: Color(0xff1C1B1F),
        title: Text(
          'Profile',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/resume');
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
                'View',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/info');
                  },
                  child: profile(icon: Icons.person, name: "Personal info")),
              //person
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.white24,
                thickness: 1,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/edu');
                },
                  child: profile(icon: Icons.school, name: 'Education')),
              //person
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.white24,
                thickness: 1,
              ),
              InkWell(
                  onTap :
                      () {
                        Navigator.of(context).pushNamed('/obj');
                      },
                  child: profile(icon: Icons.flag, name: 'Objective')),
              //person
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.white24,
                thickness: 1,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/skill');
                },
                  child: profile(icon: Icons.star_outlined, name: 'Skill')),
              //person
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.white24,
                thickness: 1,
              ),

              InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/exp');
                  },
                  child: profile(icon: Icons.work, name: 'Experience')),
              //person
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.white24,
                thickness: 1,
              ),

              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/ref');
                },
                  child: profile(icon: Icons.people_outline_rounded, name: 'Reference')),
              //person
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.white24,
                thickness: 1,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'More Sections',
                style: TextStyle(
                    color: Colors.white60,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              //more section

              profile(icon: Icons.folder, name: 'Project'),
              //person
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.white24,
                thickness: 1,
              ),
              SizedBox(
                height: 8,
              ),

              profile(icon: Icons.language, name: 'Language'),
              //person
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.white24,
                thickness: 1,
              ),
              SizedBox(
                height: 8,
              ),

              profile(icon: Icons.star, name: 'Interest'),
              //person
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.white24,
                thickness: 1,
              ),
              SizedBox(
                height: 8,
              ),

              profile(icon: Icons.stars, name: 'Achievement'),
              //person
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.white24,
                thickness: 1,
              ),
              SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding profile({required IconData icon, required String name}) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: Color(0xff0D47A1),
            size: 26,
          ),
          SizedBox(
            width: 25,
          ),
          Text(
            name,
            style: TextStyle(color: Color(0xffE5E0E4), fontSize: 20),
          )
        ],
      ),
    );
  }
}
