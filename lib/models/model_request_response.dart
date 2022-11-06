// To parse this JSON data, do
//
//     final modelRequestResponse = modelRequestResponseFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

import 'package:packages/models/model_user.dart';

ModelRequestResponse modelRequestResponseFromJson(String str) =>
    ModelRequestResponse.fromJson(json.decode(str));

String modelRequestResponseToJson(ModelRequestResponse data) =>
    json.encode(data.toJson());

class ModelRequestResponse {
  ModelRequestResponse({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    this.data = const [],
  });

  final int page;
  final int perPage;
  final int total;
  final int totalPages;
  final List<ModelUser> data;

  ModelRequestResponse copyWith({
    int? page,
    int? perPage,
    int? total,
    int? totalPages,
    List<ModelUser>? data,
  }) =>
      ModelRequestResponse(
        page: page ?? this.page,
        perPage: perPage ?? this.perPage,
        total: total ?? this.total,
        totalPages: totalPages ?? this.totalPages,
        data: data ?? this.data,
      );

  factory ModelRequestResponse.fromJson(Map<String, dynamic> json) =>
      ModelRequestResponse(
        page: json["page"] ?? 0,
        perPage: json["per_page"] ?? 0,
        total: json["total"] ?? 0,
        totalPages: json["total_pages"] ?? 0,
        data: json["data"] == null
            ? []
            : List<ModelUser>.from(
                json["data"].map((x) => ModelUser.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "per_page": perPage,
        "total": total,
        "total_pages": totalPages,
        "data": List<ModelUser>.from(data.map((x) => x.toJson())),
      };

  @override
  String toString() {
    return """Page: $page
    per_page: $perPage
    total: $total
    total_pages: $totalPages
    Number of users: ${data.length}""";
  }
}
