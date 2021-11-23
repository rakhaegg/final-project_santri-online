import 'package:flutter/material.dart';
import 'package:santri_online/login_page.dart';
import 'package:santri_online/page/home_page.dart';
import 'package:santri_online/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Santri Online',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}