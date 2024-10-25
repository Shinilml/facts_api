import 'dart:convert';

homescreenmodel welcomeFromJson(String str) =>
    homescreenmodel.fromJson(json.decode(str));

class homescreenmodel {
  List<Datum>? data;

  homescreenmodel({
    this.data,
  });

  factory homescreenmodel.fromJson(Map<String, dynamic> json) =>
      homescreenmodel(
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      );
}

class Datum {
  String? fact;
  int? length;

  Datum({
    this.fact,
    this.length,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        fact: json["fact"],
        length: json["length"],
      );
}
