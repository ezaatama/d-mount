import 'dart:convert';

List<AlatMendaki> alatMendakiFromJson(String str) => List<AlatMendaki>.from(json.decode(str).map((x) => AlatMendaki.fromJson(x)));

String alatMendakiToJson(List<AlatMendaki> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AlatMendaki {
    AlatMendaki({
        required this.name,
        required this.imageUrl,
        required this.id,
    });

    String name;
    String imageUrl;
    String id;

    factory AlatMendaki.fromJson(Map<String, dynamic> json) => AlatMendaki(
        name: json["name"],
        imageUrl: json["imageUrl"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "imageUrl": imageUrl,
        "id": id,
    };
}