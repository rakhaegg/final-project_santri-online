import 'package:flutter/material.dart';

class Permainan extends StatefulWidget {
  const Permainan({ Key? key }) : super(key: key);

  @override
  _PermainanState createState() => _PermainanState();
}

class _PermainanState extends State<Permainan> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text("Permainan"),
      ),
      body: Container(),
    );
  }
}