import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:santri_online/page/home_page.dart';
import 'package:santri_online/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: <Widget>[
        Image.asset('assets/mosque_PNG70.png'),
        Container(
          margin: EdgeInsets.only(top: 25),
          child: Text("Selamat Datang Santri",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Text(
            "Silahkan Masuk Akun Anda",
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.only(right: 20, left: 20),
          child: Column(
            children: [
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Email")),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    labelText: "Password"),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 100,
        ),
        ElevatedButton(onPressed: () {}, child: Text("Massuk")),
        Padding(
          padding: const EdgeInsets.only(left: 95),
          child: Row(
            children: [
              Container(child: Text("Tidak memiliki akun ? ")),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterPage()));
                  },
                  child: Text("Silahkan Daftar"))
            ],
          ),
        )
      ]),
        ));
  }
}
