import 'package:flutter/material.dart';

class Catatan extends StatefulWidget {
  const Catatan({ Key? key }) : super(key: key);

  @override
  _CatatanState createState() => _CatatanState();
}

class _CatatanState extends State<Catatan> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text("Catatan"),
      ),
      body: Container(),
    );
  }
}