import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:packages/const.dart';
import 'package:packages/models/model_request_response.dart';

Future<void> executeExercise() async {
  final response = await http.get(Uri.parse(kUrl));

  final Map<String, dynamic> jsonDecoded = jsonDecode(response.body);
  // print(jsonDecoded);
  // print('page: ${jsonDecoded['page'] ?? 0}');
  // print('per_page: ${jsonDecoded['per_page'] ?? 0}');
  // print('id third element: ${jsonDecoded['data']?[2]?['id'] ?? 0}');

  print(response.contentLength);
  print(response.bodyBytes.length);
  print(response.body.codeUnits.length * 8);

  print(response.request?.finalized);
  final ModelRequestResponse modelRequestResponse =
      ModelRequestResponse.fromJson(jsonDecoded);
  print(modelRequestResponse);
  for (final modelUser in modelRequestResponse.data) {
    print(modelUser);
  }
  // Ejemplo error que puede crashear la app
  // print('id third element: ${jsonDecoded['data']?[200]?['id'] ?? 0}');

  return;
}
