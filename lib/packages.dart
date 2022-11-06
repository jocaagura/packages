import 'package:packages/const.dart';
import 'package:packages/models/model_request_response.dart';

import 'controllers/http_controller.dart';

Future<void> executeExercise({int page = 1}) async {
  final Map<String, dynamic> jsonDecoded = await HttpController.httpGet(
      urlBase: kUrlBase, urlRoute: kUrlBaseRoute, params: {'page': '$page'});
  final ModelRequestResponse modelRequestResponse =
      ModelRequestResponse.fromJson(jsonDecoded);
  print("info in page ${modelRequestResponse.page}:");
  for (final modelUser in modelRequestResponse.data) {
    print(modelUser);
  }
  // Ejemplo error que puede crashear la app
  // print('id third element: ${jsonDecoded['data']?[200]?['id'] ?? 0}');

  return;
}
