import 'dart:convert';

/*
Este arquivo gerencia as cidades dos filmes
 */

class ProductionCountryModel {
  ProductionCountryModel({
    required this.iso_3166_1,
    required this.name,
  });

  final String iso_3166_1;
  final String name;

  factory ProductionCountryModel.fromJson(String str) =>
      ProductionCountryModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProductionCountryModel.fromMap(Map<String, dynamic> json) =>
      ProductionCountryModel(
        iso_3166_1: json["iso_3166_1"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "iso_3166_1": iso_3166_1,
        "name": name,
      };
}
