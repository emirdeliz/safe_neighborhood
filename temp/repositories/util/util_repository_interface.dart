import 'package:app_digital_pricing/app/shared/repositories/enum/util_enum.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart';

abstract class IUtilRepository implements Disposable {
  Future<Response> fetch(
    String url,
    EMethodHttp method,
    [
      Map<String, dynamic> body,
      Map<String, String> headers
    ]
  );
  String hasError(Response response);
  dynamic parseBodyResponseToJson(Response response);
}