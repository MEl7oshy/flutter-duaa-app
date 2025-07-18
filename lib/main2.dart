import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(DuaaApp());

class DuaaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DuaaScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DuaaScreen extends StatefulWidget {
  @override
  _DuaaScreenState createState() => _DuaaScreenState();
}

class _DuaaScreenState extends State<DuaaScreen> {
  List<String> ad3ya = [
    'اللهم إني أسألك العفو والعافية في الدنيا والآخرة.',
    'اللهم آتنا في الدنيا حسنة وفي الآخرة حسنة وقنا عذاب النار.',
    'اللهم اجعلني من التوابين واجعلني من المتطهرين.',
    'اللهم يا مقلب القلوب ثبت قلبي على دينك.',
    'اللهم إني أعوذ بك من الهم والحزن، والعجز والكسل.',
    'اللهم ارزقني حبك وحب من يحبك وحب عمل يقربني إلى حبك.',
    'اللهم اجعل القرآن ربيع قلبي ونور صدري وجلاء حزني وذهاب همي.'
  ];

  String currentDuaa = '';

  @override
  void initState() {
    super.initState();
    getRandomDuaa();
  }

  void getRandomDuaa() {
    setState(() {
      final random = Random();
      currentDuaa = ad3ya[random.nextInt(ad3ya.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        title: Text('دعاء اليوم'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                currentDuaa,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: getRandomDuaa,
                child: Text('دعاء جديد'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
              ),
            ],
          ),
        ),
    ),
);
}
}