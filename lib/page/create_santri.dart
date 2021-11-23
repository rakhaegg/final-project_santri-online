import 'package:flutter/material.dart';
import 'package:santri_online/model/santri.dart';
import 'package:santri_online/service/api_service.dart';

class CrateSantri extends StatefulWidget  {
  const CrateSantri({Key? key}) : super(key: key);

  @override
  _CrateSantriState createState() => _CrateSantriState();
}

class _CrateSantriState extends State<CrateSantri> {
  final TextEditingController _controller = TextEditingController();
  Future<Datum>? _futureSantri;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Santri"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(hintText: 'Enter Title'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _futureSantri = ApiService().createSantri(_controller.text);
                });
              },
              child: const Text('Create Data'),
            ),
          ],
        ),
      ),
    );
  }
}
