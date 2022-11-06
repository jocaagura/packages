import 'dart:convert';

import 'package:http/http.dart' as http;

import '../interfaces/interface_controller.dart';

class HttpController implements Controller {
  static Future<Map<String, dynamic>> httpGet(
      {required String urlBase,
      required String urlRoute,
      Map<String, String> params = const {}}) async {
    Map<String, dynamic> response = {};
    final url = Uri.https(urlBase, urlRoute, params);
    final responseRaw = await http.get(url);
    try {
      response = jsonDecode(responseRaw.body);
    } catch (e, s) {
      print('----------------');
      print(e);
      print(s);
    }
    return response;
  }
}
