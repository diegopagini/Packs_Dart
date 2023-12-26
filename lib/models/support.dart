import 'dart:convert';

Support supportFromJson(String str) => Support.fromJson(json.decode(str));

String supportToJson(Support data) => json.encode(data.toJson());

class Support {
  String url;
  String text;

  Support({
    required this.url,
    required this.text,
  });

  factory Support.fromJson(Map<String, dynamic> json) => Support(
        url: json["url"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "text": text,
      };
}
