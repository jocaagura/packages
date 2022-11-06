import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:packages/const.dart';

Future<void> executeExercise() async {
  final response = await http.get(Uri.parse(kUrl));

  final Map<String, dynamic> jsonDecoded = jsonDecode(response.body);
  print(jsonDecoded);
  print('hola');
  return;
}
