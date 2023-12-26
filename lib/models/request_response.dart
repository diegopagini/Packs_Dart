import 'dart:convert';

import 'support.dart';
import 'user.dart';

UsersResponse usersFromJson(String str) =>
    UsersResponse.fromJson(json.decode(str));

String usersToJson(UsersResponse data) => json.encode(data.toJson());

class UsersResponse {
  int page;
  int perPage;
  int total;
  int totalPages;
  List<User> data;
  Support support;

  UsersResponse({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.data,
    required this.support,
  });

  factory UsersResponse.fromJson(Map<String, dynamic> json) => UsersResponse(
        page: json["page"],
        perPage: json["per_page"],
        total: json["total"],
        totalPages: json["total_pages"],
        data: List<User>.from(json["data"].map((x) => User.fromJson(x))),
        support: Support.fromJson(json["support"]),
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "per_page": perPage,
        "total": total,
        "total_pages": totalPages,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "support": support.toJson(),
      };
}
