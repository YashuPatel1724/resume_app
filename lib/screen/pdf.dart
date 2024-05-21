// import 'dart:typed_data';

import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
// import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import 'menu/achievement.dart';
import 'menu/education.dart';
import 'menu/experince.dart';
import 'menu/language.dart';
import 'menu/objective.dart';
import 'menu/personal.dart';
import 'menu/project.dart';
import 'menu/reference.dart';
import 'menu/skill.dart';
// import 'package:printing/printing.dart';
// import 'menu/resume.dart';

class Pdf extends StatefulWidget {
  const Pdf({super.key});

  @override
  State<Pdf> createState() => _PdfState();
}

class _PdfState extends State<Pdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(
        build: (format) => generatepdf(),
      ),
    );
  }
}

Future<Uint8List> generatepdf()
async {
  final pdf = pw.Document();
  final image = pw.MemoryImage(
      fileImage!.readAsBytesSync());
  pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) =>
          pw.Container(
              height: 600,
              width: double.infinity,
              decoration: pw.BoxDecoration(
                  color: PdfColors.white,
                  border: pw.Border.all(color: PdfColors.white, width: 2)),
              child: pw.Row(
                children: [
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Container(
                        height: 596,
                        width: 155,
                        decoration: pw.BoxDecoration(color: PdfColor.fromHex('#1D1F31'), ),
                        child: pw.Padding(
                          padding: const pw.EdgeInsets.only(top: 10.0),
                          child: pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Center(
                                child: pw.Container(
                                  height: 100,
                                  width: 100,
                                  decoration: pw.BoxDecoration(
                                    shape: pw.BoxShape.circle,
                                    color: PdfColors.red,
                                  ),
                                  child: pw.ClipRRect(
                                      horizontalRadius: 56,
                                      verticalRadius: 56,
                                      child: pw.Image(image,
                                          fit: pw.BoxFit.cover)),
                                ),
                              ),
                              pw.SizedBox(
                                height: 15,
                              ),
                              pw.Container(
                                height: 30,
                                width: 155,
                                decoration: pw.BoxDecoration(color: PdfColors.orange),
                                alignment: pw.Alignment.center,
                                child: pw.Text(
                                  'Informartion',
                                  style: pw.TextStyle(
                                      color: PdfColors.white,
                                      fontSize: 18,
                                      fontWeight: pw.FontWeight.bold),
                                ),
                              ),
                              pw.SizedBox(height: 10),
                              pw.Padding(
                                padding: const pw.EdgeInsets.only(left: 8.0),
                                child: pw.RichText(
                                  text: pw.TextSpan(
                                    children: [
                                      pw.TextSpan(
                                        text: 'Gender',
                                        style: pw.TextStyle(
                                            color: PdfColors.orange, fontSize: 15),
                                      ),
                                      pw.TextSpan(
                                        text: ' : ${gender}',
                                        style: pw.TextStyle(
                                            color: PdfColors.white, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              pw.SizedBox(height: 10),
                              pw.Padding(
                                padding: const pw.EdgeInsets.only(left: 8.0),
                                child: pw.RichText(
                                  text: pw.TextSpan(
                                    children: [
                                      pw.TextSpan(
                                        text: 'Birth    ',
                                        style: pw.TextStyle(
                                            color: PdfColors.orange, fontSize: 15),
                                      ),
                                      pw.TextSpan(
                                        text: ' : ${BirthDate}',
                                        style: pw.TextStyle(
                                            color: PdfColors.white, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              pw.SizedBox(height: 10),
                              pw.Padding(
                                padding: const pw.EdgeInsets.only(left: 8.0),
                                child: pw.RichText(
                                  text: pw.TextSpan(
                                    children: [
                                      pw.TextSpan(
                                        text: 'Nation ',
                                        style: pw.TextStyle(
                                            color: PdfColors.orange, fontSize: 15),
                                      ),
                                      pw.TextSpan(
                                        text: ' : ${nation}',
                                        style: pw.TextStyle(
                                            color: PdfColors.white, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              pw.SizedBox(
                                height: 10,
                              ),
                              pw.Container(
                                height: 30,
                                width: 155,
                                decoration: pw.BoxDecoration(color: PdfColors.orange),
                                alignment: pw.Alignment.center,
                                child: pw.Text(
                                  'Contact',
                                  style: pw.TextStyle(
                                      color: PdfColors.white,
                                      fontSize: 18,
                                      fontWeight: pw.FontWeight.bold),
                                ),
                              ),
                              pw.Padding(
                                padding:
                                const pw.EdgeInsets.only(top: 15.0, left: 5),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      ' ${phone}',
                                      style: pw.TextStyle(
                                        color: PdfColors.white,
                                        fontSize: 15,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding:
                                const pw.EdgeInsets.only(top: 10.0, left: 5),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      ' ${email}',
                                      style: pw.TextStyle(
                                        color: PdfColors.white,
                                        fontSize: 15,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              pw.Padding(
                                padding:
                                const pw.EdgeInsets.only(top: 10.0, left: 5),
                                child: pw.Row(
                                  children: [
                                    pw.Text(
                                      ' ${address}',
                                      style: pw.TextStyle(
                                        color: PdfColors.white,
                                        fontSize: 15,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              pw.SizedBox(
                                height: 10,
                              ),
                              pw.Container(
                                height: 30,
                                width: 155,
                                decoration: pw.BoxDecoration(color: PdfColors.orange),
                                alignment: pw.Alignment.center,
                                child: pw.Text(
                                  'Skills',
                                  style: pw.TextStyle(
                                      color: PdfColors.white,
                                      fontSize: 18,
                                      fontWeight: pw.FontWeight.bold),
                                ),
                              ),
                              pw.Center(
                                child: pw.Text(
                                  '${skills}',
                                  style: pw.TextStyle(
                                      color: PdfColors.white, fontSize: 15),
                                ),
                              ),
                              pw.SizedBox(height: 6,),
                              pw.Container(
                                height: 30,
                                width: 155,
                                decoration: pw.BoxDecoration(color: PdfColors.orange),
                                alignment: pw.Alignment.center,
                                child: pw.Text(
                                  'Languages',
                                  style: pw.TextStyle(
                                      color: PdfColors.white,
                                      fontSize: 20,
                                  ),
                                ),
                              ),
                              ...List.generate(
                                  languages.length,
                                      (index) => pw.Center(
                                    child: pw.Text(
                                      '${languages[index]}',
                                      style: pw.TextStyle(color: PdfColors.white),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.all(8.0),
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Row(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text(
                              '$first',
                              style: pw.TextStyle(
                                  color: PdfColors.black,
                                  fontSize: 28,
                                  fontWeight: pw.FontWeight.bold),
                            ),
                            pw.Text(
                              ' ${last}',
                              style: pw.TextStyle(
                                  color: PdfColors.black,
                                  fontSize: 28,
                                  fontWeight: pw.FontWeight.bold),
                            ),
                          ],
                        ),
                        pw.Text(
                          '${profession}',
                          style: pw.TextStyle(
                            color: PdfColors.black,
                            fontSize: 20,
                          ),
                        ),
                        pw.SizedBox(
                          height: 10,
                        ),
                        pw.Text(
                          'Objective',
                          style: pw.TextStyle(
                              color: PdfColors.orange,
                              fontSize: 20,
                          ),
                        ),
                        pw.Container(
                          height: 55,
                          width: 180,
                          alignment: pw.Alignment.center,
                          child: pw.Text(
                            '${objective[selectindex]}',
                            style: pw.TextStyle(color: PdfColors.grey, fontSize: 10),
                          ),
                        ),
                        pw.SizedBox(
                          height: 8,
                        ),
                        pw.Text(
                          'Education',
                          style: pw.TextStyle(
                              color: PdfColors.orange,
                              fontSize: 20,
                             ),
                        ),
                        pw.Column(
                          children: List.generate(
                              education.length,
                                  (index) => pw.Column(
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.Row(
                                    children: [
                                      pw.Text('${education[index].school.text}',
                                          style: pw.TextStyle(
                                              fontWeight: pw.FontWeight.bold,
                                              color: PdfColors.black)),
                                      pw.SizedBox(
                                        width: 50,
                                      ),
                                      pw.Text(
                                        '${education[index].firstDate.text} - ${education[index].lastDate.text}',
                                        style: pw.TextStyle(color: PdfColors.blue),
                                      ),
                                    ],
                                  ),
                                  pw.Text('${education[index].degree.text}',
                                      style: pw.TextStyle(
                                          fontWeight: pw.FontWeight.bold,
                                          color: PdfColors.grey)),
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
                        pw.SizedBox(
                          height: 8,
                        ),
                        pw.Text(
                          'Experence',
                          style: pw.TextStyle(
                              color: PdfColors.orange,
                              fontSize: 20,),
                        ),
                        pw.Column(
                          children: List.generate(
                              experience.length,
                                  (index) => pw.Column(
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.Row(
                                    children: [
                                      pw.Text(
                                          '${experience[index].companyName!.text}',
                                          style: pw.TextStyle(
                                              fontWeight: pw.FontWeight.bold,
                                              color: PdfColors.black)),
                                      pw.SizedBox(
                                        width: 80,
                                      ),
                                      pw.Text(
                                        '${experience[index].firstDate!.text} - ${experience[index].lastDate!.text}',
                                        style: pw.TextStyle(color: PdfColors.blue),
                                      ),
                                    ],
                                  ),
                                  pw.Text('${experience[index].jobtitle!.text}',
                                      style: pw.TextStyle(
                                          fontWeight: pw.FontWeight.bold,
                                          color: PdfColors.grey)),
                                ],
                              )),
                        ),
                        pw.SizedBox(
                          height: 8,
                        ),
                        pw.Text(
                          'Reference',
                          style: pw.TextStyle(
                              color: PdfColors.orange,
                              fontSize: 20,
                              ),
                        ),
                        pw.Column(
                          children: List.generate(
                              reference.length,
                                  (index) => pw.Column(
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.Row(
                                    children: [
                                      pw.Text(
                                          '${reference[index].ReferenceName!.text}',
                                          style: pw.TextStyle(
                                              fontWeight: pw.FontWeight.bold,
                                              color: PdfColors.black)),
                                      pw.SizedBox(
                                        width: 50,
                                      ),
                                      pw.Text(
                                        '${reference[index].phone!.text}',
                                        style: pw.TextStyle(color: PdfColors.blue),
                                      ),
                                    ],
                                  ),
                                  pw. Text(
                                      '${reference[index].companyName!.text}',
                                      style: pw.TextStyle(
                                          fontWeight: pw.FontWeight.bold,
                                          color: PdfColors.grey)),
                                ],
                              )),
                        ),
                        pw.SizedBox(
                          height: 5,
                        ),
                        pw.RichText(
                          text: pw.TextSpan(
                            children: [
                              pw.TextSpan(
                                  text: 'Projects',
                                  style: pw.TextStyle(
                                      color: PdfColors.orange,
                                      fontSize: 20)),
                              pw.TextSpan(
                                  text: '${project}',
                                  style: pw.TextStyle(
                                      color: PdfColors.grey, fontSize: 20))
                            ],
                          ),
                        ),
                        pw.SizedBox(
                          height: 10,
                        ),
                        pw.RichText(
                          text: pw.TextSpan(
                            children: [
                              pw.TextSpan(
                                  text: 'Achievement',
                                  style: pw.TextStyle(
                                      color: PdfColors.orange,
                                      fontSize: 20)),
                              pw.TextSpan(
                                  text: '${achei}',
                                  style: pw.TextStyle(
                                      color: PdfColors.grey, fontSize: 18)),
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
  return pdf.save();
}
