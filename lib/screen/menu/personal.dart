import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

ImagePicker imagePicker = ImagePicker();
File? fileImage;
TextEditingController txtfname = TextEditingController();
TextEditingController txtlname = TextEditingController();
TextEditingController txtprof = TextEditingController();
TextEditingController txtgender = TextEditingController();
TextEditingController txtnation = TextEditingController();
TextEditingController txtdate = TextEditingController();
TextEditingController txtphone = TextEditingController();
TextEditingController txtemail = TextEditingController();
TextEditingController txtaddress = TextEditingController();
GlobalKey<FormState> formkey = GlobalKey();

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1C1B1F),
        appBar: AppBar(
          backgroundColor: Color(0xff1C1B1F),
          title: Text(
            'Profile',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          actions: [
            InkWell(
              onTap: () {
                bool res = formkey.currentState!.validate();
                if (res) {
                  first = txtfname.text;
                  last = txtlname.text;
                  profession = txtprof.text;
                  gender = txtgender.text;
                  nation = txtnation.text;
                  BirthDate = txtdate.text;
                  phone = txtphone.text;
                  email = txtemail.text;
                  address = txtaddress.text;
                  Navigator.of(context).pushReplacementNamed('/');
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.black26,
                      content: Center(
                          child: Text(
                            'Saved',
                            style: TextStyle(fontSize: 20),
                          ))));
                }

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
        body: SingleChildScrollView(
            child: Form(
          key: formkey,
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      (fileImage != null) ? FileImage(fileImage!) : null,
                  child: (fileImage != null)
                      ? null
                      : Image.asset(
                          'Asstes/images/3135715-removebg-preview.png'),
                ),
              ),
              TextButton(
                onPressed: () async {
                  XFile? xfile =
                      await imagePicker.pickImage(source: ImageSource.gallery);
                  setState(() {
                    fileImage = File(xfile!.path);
                  });
                },
                child: Text(
                  'Add profile Picture',
                  style: TextStyle(color: Color(0xff838384), fontSize: 17),
                ),
              ),
              Textfield(
                  icon: Icons.person,
                  name: 'First Name',
                  keyboard: TextInputType.name,
                  controller: txtfname),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 46,
                    ),
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'value must be required';
                          }
                        },
                        controller: txtlname,
                        decoration: InputDecoration(
                          label: Text(
                            'Last Name',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        textInputAction: TextInputAction.newline,
                        keyboardType: TextInputType.name,
                        cursorColor: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Textfield(
                  icon: Icons.work,
                  name: 'Profession',
                  keyboard: TextInputType.name,
                  controller: txtprof),
              Textfield(
                  icon: Icons.transgender,
                  name: 'Gender',
                  keyboard: TextInputType.name,
                  controller: txtgender),
              Textfield(
                  icon: Icons.flag,
                  name: 'Nationality',
                  keyboard: TextInputType.name,
                  controller: txtnation),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.cake,
                      color: Colors.blue.shade900,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'value must be required';
                          }
                        },
                        controller: txtdate,
                        decoration: InputDecoration(
                          label: Text(
                            'Date of Birth',
                            style: TextStyle(color: Colors.grey),
                          ),
                          suffixIcon: InkWell(
                              onTap: () {
                                setState(() async {
                                  datepicker = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1950),
                                      lastDate: DateTime(2025));
                                  if (datepicker != null) {
                                    BirthDate =
                                        '${datepicker!.day}/${datepicker!.month}/${datepicker!.year}';
                                    txtdate.text = BirthDate;
                                  }
                                });
                              },
                              child: Icon(Icons.calendar_month_outlined)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Textfield(
                  icon: Icons.call,
                  name: 'phone',
                  keyboard: TextInputType.number,
                  controller: txtphone),
              Textfield(
                  icon: Icons.email,
                  name: 'Email Address',
                  keyboard: TextInputType.emailAddress,
                  controller: txtemail),
              Textfield(
                  icon: Icons.location_on,
                  name: 'Address',
                  keyboard: TextInputType.streetAddress,
                  controller: txtaddress),
            ],
          ),
        )),
        // bottomNavigationBar: InkWell(
        //   child: Container(
        //     height: 50,
        //     width: double.infinity,
        //     decoration: BoxDecoration(
        //       color: Color(0xff0D47A1),
        //     ),
        //     alignment: Alignment.center,
        //     child: Text(
        //       'Save & Generate',
        //       style: TextStyle(color: Colors.white, fontSize: 25),
        //     ),
        //   ),
        // )
        floatingActionButton: InkWell(
          onTap: () {
            bool res = formkey.currentState!.validate();
            if (res) {
              first = txtfname.text;
              last = txtlname.text;
              profession = txtprof.text;
              gender = txtgender.text;
              nation = txtnation.text;
              BirthDate = txtdate.text;
              phone = txtphone.text;
              email = txtemail.text;
              address = txtaddress.text;
            }
          },
          child: Container(
            height: 50,
            width: 90,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            alignment: Alignment.center,
            child: Text(
              'View CV',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ),
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling);
  }

  Widget Textfield(
      {required IconData icon,
      required String name,
      required TextInputType keyboard,
      required TextEditingController controller}) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.blue.shade900,
            size: 25,
          ),
          SizedBox(
            width: 20,
          ),
          SizedBox(
            width: 300,
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              validator: (value) {
                if (value!.isEmpty) {
                  return ' value must be requried';
                }
              },
              controller: controller,
              decoration: InputDecoration(
                label: Text(
                  name,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              textInputAction: TextInputAction.next,
              keyboardType: keyboard,
              cursorColor: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

DateTime? datepicker;
String BirthDate = "";
String? first;
String? last;
String? profession;
String? gender;
String? nation;
String? phone;
String? email;
String? address;
