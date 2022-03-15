import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[400],
          title: Center(
            child: Text(
              'عاصمة فلسطين',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              //height: 220,
              child: Image.asset('assets/images/jerusalem.jpg'),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                'مدينة القدس',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            InformationWedgit('الاسم', 'القدس'),
            InformationWedgit('المساحة', '١٢٥كم'),
            InformationWedgit('السكان', '٣٥٨٠٠٠نسمة'),
            InformationWedgit('الدولة', 'فلسطين'),
            InformationWedgit('اسم الطالب', 'شيماء '),
          ],
        ),
      ),
    );
  }
}

class InformationWedgit extends StatelessWidget {
  String? keyName;
  String? valueName;
  InformationWedgit(String? keyName, String? valueName) {
    this.keyName = keyName;
    this.valueName = valueName;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.purple[50],
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(25)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
              flex: 2,
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  height: 60,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(child: Text(this.valueName ?? '')))),
          Expanded(
              flex: 1,
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  height: 60,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(child: Text(this.keyName ?? ''))))
        ],
      ),
    );
  }
}
