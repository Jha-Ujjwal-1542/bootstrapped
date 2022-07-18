import 'dart:convert';

List<Chats> chatsFromJson(String str) =>
    List<Chats>.from(json.decode(str).map((x) => Chats.fromJson(x)));

String chatsToJson(List<Chats> data) =>
    json.encode(List<Dynamic>.from(data.map((x) => x.toJson())));

class Dynamic {}

class Chats {
  Chats({
    required this.img,
    required this.name,
    required this.online,
  });
  String img;
  String name;
  bool online;

  factory Chats.fromJson(Map<String, dynamic> json) => Chats(
        img: json["img"],
        name: json["name"],
        online: json["online"],
      );

  Map<String, dynamic> toJson() => {
        "img": img,
        "name": name,
        "online": online,
      };
}
