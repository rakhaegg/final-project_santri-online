import 'package:flutter/material.dart';

class Akun extends StatefulWidget {
  const Akun({ Key? key }) : super(key: key);

  @override
  _AkunState createState() => _AkunState();
}

class _AkunState extends State<Akun> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text("Akun"),
      ),
      body: Container(),
    );
  }
}