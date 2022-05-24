import 'package:chitchat_internship/ans_1.dart';
import 'package:chitchat_internship/ans_2/home_page.dart';
import 'package:chitchat_internship/final_ans.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '面試題目'),
    );
  }
}
