import 'package:flutter/material.dart';

class Absensi extends StatefulWidget {
  const Absensi({ Key? key }) : super(key: key);

  @override
  _AbsensiState createState() => _AbsensiState();
}

class _AbsensiState extends State<Absensi> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text("Absensi"),
      ),
      body: Container(),
    );
  }
}