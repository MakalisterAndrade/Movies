import 'dart:convert';

class MovieGenre {
  MovieGenre({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;

  factory MovieGenre.fromJson(String str) =>
      MovieGenre.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MovieGenre.fromMap(Map<String, dynamic> json) => MovieGenre(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
      };
}
