// To parse this JSON data, do
//
//     final santri = santriFromJson(jsonString);

import 'dart:convert';

Santri santriFromJson(String str) => Santri.fromJson(json.decode(str));

String santriToJson(Santri data) => json.encode(data.toJson());

class Santri {
    Santri({
       required this.data,
    });

    List<Datum> data;

    factory Santri.fromJson(Map<String, dynamic> json) => Santri(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}
enum DatumType{
  createType,
  showDatum
}
class Datum {
    Datum({
      required this.id,
      required this.name,
      
    });
  

    int id;
 
    String name;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"], 
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}
