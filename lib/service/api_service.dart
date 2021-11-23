import 'dart:convert';
import 'dart:io';

import 'package:santri_online/model/santri.dart';
import 'package:http/http.dart' as http;
import 'package:santri_online/service/exception.dart';

class ApiService implements CustomException {
  static const String _baseUrl = "http://10.0.2.2:8000/api/";

  dynamic checkResponse(response) {
    switch (response.statusCode) {
      case 200 :
        var santri = Santri.fromJson(json.decode(response.body));
        //List<Santri> = santri;
        return santri;
      case 201:
        return Datum.fromJson(json.decode(response.body));
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode: ${response.statusCode}');
    }
  }

  Future<Santri> list() async {
    var response;
    try {
      response = await http.get(Uri.parse(_baseUrl + "categories"));
      return checkResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
  }

  Future<Datum> createSantri(String name) async {
    var response;
    try {
      response = await http.post(
        Uri.parse(_baseUrl + "categories"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          "name": name,
        }),
      );
      return checkResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
  }

  Future<http.Response> deleteSantri(int id) async {
    var response;
    try {
      response = await http.delete(
        Uri.parse(_baseUrl + "categories/$id"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
       return checkResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
  }
}
