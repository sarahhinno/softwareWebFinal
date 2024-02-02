import 'package:flutter/material.dart';
import 'package:software/theme.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'dart:io';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:open_file/open_file.dart';

class report extends StatefulWidget {
  @override
  _reportState createState() => _reportState();
}

class _reportState extends State<report> {
  String name = 'سـاره خـالـد ولـيـد حـنـو';
  String age = '15';
  String date = '21/1/2024';
  String svalueeLevel = 'الـعـلاج الـوظـيـفـي';
  List<String> level = [
    'الـعـلاج الـوظـيـفـي',
    'عـلاج الـنـطـق والـلـغـة ',
    'الـعـلاج الـسـلـوكـي'
  ];
  String selectedValueoptions1 = 'الـتـركـيـز والانـتـبـاه';
  List<String> options1 = [
    'الـتـركـيـز والانـتـبـاه',
    'الـمـهـارات الادراكـيـة',
    'الـتـواصـل الـبـصـري',
    ' الـمـشـاكـل الـحـسـيـة',
    'الـمـهـارات الـحـيـاتـيـة',
  ];
  String selectedValueoptions2 = 'الـلـغـة الاسـتـقـبـالـيـة';
  List<String> options2 = [
    'الـلـغـة الاسـتـقـبـالـيـة',
    'الـلـغـة الـتـعـبـيـريـة',
    'الأخـطـاء الـلـفـظـيـة',
    'أعـضـاء الـنـطـق',
  ];
  String selectedValueoptions3 = 'الاسـتـجـابـة';
  List<String> options3 = [
    'الاسـتـجـابـة',
    'الانـفـعـالات والـتـعـبـيـر عـنـهـا',
  ];
  String selectedValue = 'الاسـتـجـابـة';
  List<String> values = [
    '- تعزيز الاستقلال في الأنشطة اليومية مثل ارتداء الملابس والتغذية والعناية.',
    '  تطوير التنسيق الثنائي من خلال التمارين التي تشمل جانبي الجسم في وقت واحد',
    'زيادة قوة اليد وقدرتها على التحمل من خلال التمارين والأنشطة',
    'الانخراط في الأنشطة المعرفية التي تتحدى مهارات حل المشكلات والذاكرة',
    'تعزيز المشاركة الاجتماعية من خلال الأنشطة الجماعية',
  ];
  List<String> values1 = [
    'تعزيز مهارات النطق لتحسين الوضوح في الكلام',
    'زيادة المفردات عن طريق إدخال كلمات جديدة من خلال الأنشطة والألعاب التفاعلية',
    'تحسين المهارات اللغوية التعبيرية، مما يمكّن الأطفال من نقل الأفكار، والمشاعر',
    'تعزيز المهارات اللغوية الاستقبالية لتعزيز فهم اللغة المنطوقة',
  ];
  List<String> values2 = [
    'تعزيز تطوير آليات التكيف التكيفية لمساعدة الأطفال على التغلب على الضغوطات',
    'تعزيز المهارات مثل المشاركة، وتبادل الأدوار، والتعرف على الإشارات الاجتماعية',
  ];
  Future<void> saveFile() async {
    final pdf = pw.Document();
    //  var data = await rootBundle.load("fonts/IRANSansWeb(FaNum)_Bold.ttf");
    // final fontt = pw.Font.ttf(data);
    final ByteData fontDatabold =
        await rootBundle.load('fonts/Amiri-BoldItalic.ttf');
    final pw.Font myfontbold = pw.Font.ttf(fontDatabold);
    final ByteData fontData = await rootBundle.load('fonts/Amiri-Italic.ttf');
    final pw.Font myfont = pw.Font.ttf(fontData);
    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Container(
            child: pw.Column(
              children: [
                pw.SizedBox(height: 20),
                pw.Row(
                  //     crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    pw.Spacer(),
                    pw.Text(
                      date,
                      style: pw.TextStyle(
                        font: myfontbold,
                        fontSize: 20,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.SizedBox(width: 20),
                    pw.Text(
                      ' الـتـاريـخ',
                      style: pw.TextStyle(
                        font: myfontbold,
                        fontSize: 20,
                        fontWeight: pw.FontWeight.bold,
                        //  TextDirection:  pw.TextDirection.rtl,
                      ),
                      textDirection: pw.TextDirection.rtl,
                      textAlign: pw.TextAlign.right,
                    ),
                    pw.SizedBox(width: 20),
                  ],
                ),
                pw.Row(
                  //  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    pw.Spacer(),
                    pw.Text(
                      'جـمـعـيـة سـنـد لـذوي الاحـتـيـاجـات الـخـاصـة',
                      style: pw.TextStyle(
                        font: myfontbold,

                        fontSize: 20,
                        //    fontWeight:pw.FontWeight.w400 ,
                      ),
                      textDirection: pw.TextDirection.rtl,
                      textAlign: pw.TextAlign.right,
                    ),
                    pw.SizedBox(width: 20),
                    pw.Text(
                      '    مــن ',
                      style: pw.TextStyle(
                        font: myfontbold,
                        fontSize: 20,
                        // fontWeight: FontWeight.bold,
                      ),
                      textDirection: pw.TextDirection.rtl,
                      textAlign: pw.TextAlign.right,
                    ),
                    pw.SizedBox(width: 20),
                  ],
                ),
                pw.Row(
                  //   crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    pw.Spacer(),
                    pw.Text(
                      name,
                      style: pw.TextStyle(
                        font: myfontbold,
                        fontSize: 20,
                        // fontWeight: FontWeight.w200,
                      ),
                      textDirection: pw.TextDirection.rtl,
                      textAlign: pw.TextAlign.right,
                    ),
                    pw.SizedBox(width: 20),
                    pw.Text(
                      '  الاســـم',
                      style: pw.TextStyle(
                        font: myfontbold,
                        fontSize: 20,
                        //  fontWeight: FontWeight.bold,
                      ),
                      textDirection: pw.TextDirection.rtl,
                      textAlign: pw.TextAlign.right,
                    ),
                    pw.SizedBox(width: 20),
                  ],
                ),
                pw.Row(
                  //   crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    pw.Spacer(),
                    pw.Text(
                      age,
                      style: pw.TextStyle(
                        font: myfontbold,
                        fontSize: 20,
                        // fontWeight: FontWeight.w200,
                      ),
                    ),
                    pw.SizedBox(width: 20),
                    pw.Text(
                      '   الـعـمــر',
                      style: pw.TextStyle(
                        font: myfontbold,
                        fontSize: 20,
                        //  fontWeight: FontWeight.bold,
                      ),
                      textDirection: pw.TextDirection.rtl,
                      textAlign: pw.TextAlign.right,
                    ),
                    pw.SizedBox(width: 20),
                  ],
                ),
                pw.SizedBox(height: 20),
                pw.Center(
                    child: pw.Text(
                  'الـمـوضـوع تـقـريـر عـن حـالـة الـطـفـل',
                  style: pw.TextStyle(
                    font: myfontbold,
                    fontSize: 20,
                    //  fontWeight: FontWeight.bold,
                  ),
                  textDirection: pw.TextDirection.rtl,
                  textAlign: pw.TextAlign.right,
                )),
                pw.Text(
                  'تـحـيـة وبـعـد ',
                  style: pw.TextStyle(
                    font: myfontbold,
                    fontSize: 20,
                    //   fontWeight: FontWeight.bold,
                  ),
                  textDirection: pw.TextDirection.rtl,
                  textAlign: pw.TextAlign.right,
                  //  textAlign: TextAlign.end,
                ),
                pw.Container(
                  // pw.padding:pw. EdgeInsets.all(20),
                  child: pw.Column(
                    children: [
                      pw.Text(
                        ' نـعـلـمـكـم بأن الـطـفـل $name الـبـالـغ مـن العـمـر $age   سـنـوات',
                        style: pw.TextStyle(
                          font: myfontbold,
                          fontSize: 20,
                          // fontWeight: FontWeight.w100,
                        ),
                        textDirection: pw.TextDirection.rtl,
                        textAlign: pw.TextAlign.right,
                      ),
                      pw.Text(
                        '، قد حضر إلـى الـجـمـعـيـة لإجـراء تـقـيـيـم لـحـالـتـه وبـنـاء عـلـى ذلـك تـم ادراجـه فـي الـجـمـعـيـة لـلـعـمـل مـعـه عـلـى مـراحـل تـأهـيـلـيـة وتـربـويـة ضـمـن خـطـة الـعـمـل مـن قـبـل فـريـق مـتـخـصـص ',
                        style: pw.TextStyle(
                          font: myfontbold,
                          fontSize: 20,
                          //  fontWeight: FontWeight.w100,
                        ),
                        textDirection: pw.TextDirection.rtl,
                        textAlign: pw.TextAlign.right,
                      ),
                      pw.SizedBox(height: 10),
                      pw.Text(
                        'وبـعـد مـتـابـعـة حـالـة الـطـفـل والـعـمـل مـعـه ضـمـن جـلـسـات فـرديـة مـتـخـصـصـة تـم الـوصـول مـعـه إلـى مـراحـل تـأهـيـلـيـة جـيـدة فـي الـنـواحـي الـتالـيـة ',
                        style: pw.TextStyle(
                          font: myfontbold,
                          fontSize: 20,
                          //  fontWeight: FontWeight.w100,
                        ),
                        textDirection: pw.TextDirection.rtl,
                        textAlign: pw.TextAlign.right,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
    pdf.addPage(pw.Page(build: (pw.Context context) {
      return pw.Container(
          child: pw.Column(children: [
        pw.Center(
          // padding: pw.EdgeInsets.all(10),
          // width: double.infinity,
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.end,
            children: [
              pw.Center(
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.end,
                  children: [
                    pw.Text(
                      'الـعـلاج الـوظـيـفـي',
                      style: pw.TextStyle(
                        font: myfontbold,
                        fontSize: 30,
                        //  fontWeight: FontWeight.bold,
                      ),
                      textDirection: pw.TextDirection.rtl,
                      textAlign: pw.TextAlign.end,
                    ),
                    pw.SizedBox(height: 20),
                    for (int j = 0; j < options1.length; j++)
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.end,
                        children: [
                          pw.Text(
                            options1[j],
                            style: pw.TextStyle(
                              font: myfontbold,
                              fontSize: 25,
                              // fontWeight: FontWeight.bold,
                              //   color: Colors.red
                            ),
                            textDirection: pw.TextDirection.rtl,
                            textAlign: pw.TextAlign.end,
                          ),
                          pw.Text(
                            values[j],
                            style: pw.TextStyle(
                              font: myfontbold,
                              fontSize: 20,
                              // fontWeight: FontWeight.bold,
                              //   color: Colors.red
                            ),
                            textDirection: pw.TextDirection.rtl,
                            textAlign: pw.TextAlign.end,
                          ),
                        ],
                      )
                  ],
                ),
              )
            ],
          ),
        ),
      ]));
    }));
    pdf.addPage(pw.Page(build: (pw.Context context) {
      return pw.Container(
          child: pw.Column(children: [
        pw.Container(
          padding: pw.EdgeInsets.all(10),
          width: double.infinity,
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.end,
            children: [
              pw.Container(
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.end,
                  children: [
                    pw.Text(
                      'عـلاج الـنـطـق والـلـغـة ',
                      style: pw.TextStyle(
                        font: myfontbold,
                        fontSize: 30,
                        fontWeight: pw.FontWeight.bold,
                      ),
                      textDirection: pw.TextDirection.rtl,
                      textAlign: pw.TextAlign.end,
                    ),
                    pw.SizedBox(height: 20),
                    for (int j = 0; j < options2.length; j++)
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.end,
                        children: [
                          pw.Text(
                            options2[j],
                            style: pw.TextStyle(
                              font: myfontbold,
                              fontSize: 25,
                              fontWeight: pw.FontWeight.bold,
                              //  color: Colors.red
                            ),
                            textDirection: pw.TextDirection.rtl,
                            textAlign: pw.TextAlign.end,
                          ),
                          pw.Text(
                            values1[j],
                            style: pw.TextStyle(
                              font: myfontbold,
                              fontSize: 20,
                              // fontWeight: FontWeight.bold,
                              //   color: Colors.red
                            ),
                            textDirection: pw.TextDirection.rtl,
                            textAlign: pw.TextAlign.end,
                          ),
                        ],
                      )
                  ],
                ),
              )
            ],
          ),
        ),
      ]));
    }));
    pdf.addPage(pw.Page(build: (pw.Context context) {
      return pw.Container(
          child: pw.Column(children: [
        pw.Container(
          padding: pw.EdgeInsets.all(10),
          width: double.infinity,
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.end,
            children: [
              pw.Container(
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.end,
                  children: [
                    pw.Text(
                      'الـعـلاج الـسـلـوكـي',
                      style: pw.TextStyle(
                        font: myfontbold,
                        fontSize: 30,
                        fontWeight: pw.FontWeight.bold,
                      ),
                      textDirection: pw.TextDirection.rtl,
                      textAlign: pw.TextAlign.end,
                    ),
                    pw.SizedBox(height: 20),
                    for (int j = 0; j < options3.length; j++)
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.end,
                        children: [
                          pw.Text(
                            options3[j],
                            style: pw.TextStyle(
                              font: myfontbold,
                              fontSize: 25,
                              fontWeight: pw.FontWeight.bold,
                            ),
                            textDirection: pw.TextDirection.rtl,
                            textAlign: pw.TextAlign.end,
                          ),
                          pw.Text(
                            values2[j],
                            style: pw.TextStyle(
                              font: myfontbold,
                              fontSize: 20,
                              // fontWeight: FontWeight.bold,
                              //   color: Colors.red
                            ),
                            textDirection: pw.TextDirection.rtl,
                            textAlign: pw.TextAlign.end,
                          ),
                        ],
                      )
                  ],
                ),
              )
            ],
          ),
        ),
        pw.Container(
          padding: pw.EdgeInsets.all(10),
          width: double.infinity,
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.end,
            children: [
              pw.Text(
                'الـتـوصـيـات',
                style: pw.TextStyle(
                  font: myfontbold,
                  fontSize: 30,
                  fontWeight: pw.FontWeight.bold,
                ),
                textAlign: pw.TextAlign.end,
                textDirection: pw.TextDirection.rtl,
              ),
              pw.SizedBox(height: 20),
              pw.Text(
                'تعزيز الإبداع من خلال أشكال مختلفة من اللعب والفنون والحرف اليدوية. اللعب ضروري للتنمية المعرفية والعاطفية والاجتماعية.',
                style: pw.TextStyle(
                  font: myfontbold,
                  fontSize: 20,
               //   fontWeight: pw.FontWeight.bold,
                ),
                textAlign: pw.TextAlign.end,
                textDirection: pw.TextDirection.rtl,
              ),
            ],
          ),
        ),
        pw.SizedBox(height: 60),
        pw.Container(
          child: pw.Column(
            children: [
              pw.Text(
                'نـابـلـس - رفـيـديـا- عـمـارة أبـو الـروح كـلـبـونـة',
                style: pw.TextStyle(
                  font: myfontbold,
                  fontSize: 15,
                  // fontWeight: FontWeight.bold,
                ),
                textAlign: pw.TextAlign.end,
                textDirection: pw.TextDirection.rtl,
              ),
              pw.Text(
                ' الـهـاتـف : 092342001/ جـوال :0595883338',
                style: pw.TextStyle(
                  font: myfontbold,
                  fontSize: 15,
                  // fontWeight: FontWeight.bold,
                ),
                textAlign: pw.TextAlign.end,
                textDirection: pw.TextDirection.rtl,
              ),
            ],
          ),
        ),
      ]));
    }));
    final directory = await getExternalStorageDirectory();
    final file = File("${directory?.path}/$name.pdf");

    if (directory == null) {
      // Handle the case where downloadsPath returns null
      print('Error: Downloads directory is null.');
      return;
    }

    try {
      final pdfBytes = await pdf.save();
      await file.writeAsBytes(pdfBytes.toList());

      print('PDF saved successfully at: ${file.path}');

      // Check if the file exists after saving
      if (await file.exists()) {
        print('File exists at: ${file.path}');

        // Open the saved PDF file
        await OpenFile.open(file.path);
      } else {
        print('File does not exist.');
      }
    } catch (e) {
      print('Error saving or opening PDF: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: primaryColor,
          title: Row(
            children: <Widget>[
              Spacer(),
              Text(
                'الـتـقـريـر الـطـبـي',
                style: TextStyle(
                    fontFamily: 'myfont',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: primaryLightColor),
              ),
              SizedBox(width: 130),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: primaryColor, // Set the background color here
                ),
                onPressed: saveFile,
                child: Text(
                  ' pdf',
                  style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: primaryLightColor),
                ),
              ),
              Spacer(),
            ],
          )),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            //  crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              SizedBox(height: 20),
              Row(
                //     crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Spacer(),
                  Text(
                    date,
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    ': الـتـاريـخ',
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Spacer(),
                  Text(
                    'جـمـعـيـة سـنـد لـذوي الاحـتـيـاجـات الـخـاصـة',
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    ':     مــن ',
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Spacer(),
                  Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    ':  الاســـم',
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Spacer(),
                  Text(
                    age,
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    ':   الـعـمــر',
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 20),
              Center(
                  child: Text(
                'الـمـوضـوع تـقـريـر عـن حـالـة الـطـفـل',
                style: TextStyle(
                  fontFamily: 'myfont',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )),
              Text(
                'تـحـيـة وبـعـد ',
                style: TextStyle(
                  fontFamily: 'myfont',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.end,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Text(
                      ' نـعـلـمـكـم بأن الـطـفـل $name الـبـالـغ مـن العـمـر $age   سـنـوات',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 15,
                        fontWeight: FontWeight.w100,
                      ),
                      textAlign: TextAlign.end,
                    ),
                    Text(
                      '، قد حضر إلـى الـجـمـعـيـة لإجـراء تـقـيـيـم لـحـالـتـه وبـنـاء عـلـى ذلـك تـم ادراجـه فـي الـجـمـعـيـة لـلـعـمـل مـعـه عـلـى مـراحـل تـأهـيـلـيـة وتـربـويـة ضـمـن خـطـة الـعـمـل مـن قـبـل فـريـق مـتـخـصـص ',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 15,
                        fontWeight: FontWeight.w100,
                      ),
                      textAlign: TextAlign.end,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'وبـعـد مـتـابـعـة حـالـة الـطـفـل والـعـمـل مـعـه ضـمـن جـلـسـات فـرديـة مـتـخـصـصـة تـم الـوصـول مـعـه إلـى مـراحـل تـأهـيـلـيـة جـيـدة فـي الـنـواحـي الـتالـيـة ',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 15,
                        fontWeight: FontWeight.w100,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 50, 10),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Card(
                    
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'الـعـلاج الـوظـيـفـي',
                            style: TextStyle(
                              fontFamily: 'myfont',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.end,
                          ),
                          for (int j = 0; j < options1.length; j++)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  options1[j],
                                  style: TextStyle(
                                      fontFamily: 'myfont',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                  textAlign: TextAlign.end,
                                ),
                                SizedBox(height: 5),
                                Text(
                                  values[j],
                                  style: TextStyle(
                                    fontFamily: 'myfont',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w200,
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ],
                            )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 50, 10),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'عـلاج الـنـطـق والـلـغـة ',
                            style: TextStyle(
                              fontFamily: 'myfont',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.end,
                          ),
                          for (int j = 0; j < options2.length; j++)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  options2[j],
                                  style: TextStyle(
                                      fontFamily: 'myfont',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                  textAlign: TextAlign.end,
                                ),
                                Text(
                                  values1[j],
                                  style: TextStyle(
                                    fontFamily: 'myfont',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w200,
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ],
                            )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 50, 10),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'الـعـلاج الـسـلـوكـي',
                            style: TextStyle(
                              fontFamily: 'myfont',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.end,
                          ),
                          for (int j = 0; j < options3.length; j++)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  options3[j],
                                  style: TextStyle(
                                      fontFamily: 'myfont',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                  textAlign: TextAlign.end,
                                ),
                                Text(
                                  values2[j],
                                  style: TextStyle(
                                    fontFamily: 'myfont',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w200,
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ],
                            )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 50, 10),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'الـتـوصـيـات',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.end,
                      //textDirection:TextDirection.rtl ,
                    ),
                    Text(
                      'تعزيز الإبداع من خلال أشكال مختلفة من اللعب والفنون والحرف اليدوية. اللعب ضروري للتنمية المعرفية والعاطفية والاجتماعية.',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 15,
                        fontWeight: FontWeight.w200,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      'نـابـلـس - رفـيـديـا- عـمـارة أبـو الـروح كـلـبـونـة',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.end,
                    ),
                    Text(
                      ' الـهـاتـف : 092342001/ جـوال :0595883338',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}