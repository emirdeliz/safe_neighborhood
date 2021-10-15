import 'dart:collection';
import 'dart:convert';

import 'package:app_digital_pricing/app/shared/config/error_message_custom.dart';
import 'package:app_digital_pricing/app/shared/repositories/enum/util_enum.dart';
import 'package:app_digital_pricing/app/shared/repositories/util/util_repository_interface.dart';

import 'package:http/http.dart' as http;

class UtilRepository implements IUtilRepository {
  @override
  Future<http.Response> fetch(
    String url, 
    EMethodHttp method,
    [
      Map<String, dynamic> body,
      Map<String, String> headers
    ]
  ) async {
    switch (method) {
      case EMethodHttp.post: {
        final http.Response response = await http.post(url, body: body, headers: headers);
        return Future.value(response);
      }
      case EMethodHttp.put: {
        final http.Response response = await http.put(url, body: body, headers: headers);
        return Future.value(response);
      }
      case EMethodHttp.delete: {
        final http.Response response = await http.delete(url, headers: headers);
        return Future.value(response);
      }
      default: {
        final queryParams = body.entries.fold('', (p, c) => '$c.name=$c.value&$p');
        final path = '$url$queryParams';
        final http.Response response = await http.get(path, headers: headers);
        return Future.value(response);
      }
    }
  }

  @override
  String hasError(http.Response response) {
    final LinkedHashMap body = parseBodyResponseToJson(response);
    final dynamic errors = body['errors'];
    final bool hasError = errors?.isNotEmpty ?? false;
    final bool showError = hasError || response.statusCode != EStatusHttp.successful;
    final String errorMsg = errors is String || errors == null ? errors : errors[0];
    final error = hasError ? errorMsg : '';
    return showError ? (error ?? response.statusCode.toString()) : '';
  }

  @override
  dynamic parseBodyResponseToJson(http.Response response) {
    final dynamic body = response.body;
    try {
      final dynamic hMap = jsonDecode(body);
      return hMap;
    } catch(e) {
      final dynamic hMap = { 'errors': this._getErrorMessage(response.statusCode) };
      return hMap;
    }
  }

  String _getErrorMessage(int errorCode) {
    switch (errorCode) {
      case EStatusHttp.invalidToken:
        return EErrorMessageCustom.invalidToken;
      case EStatusHttp.invalidLogin:
        return EErrorMessageCustom.invalidLogin;
      default:
        return EErrorMessageCustom.unknownError + ' ' + 'Código do erro: $errorCode.';
    }
  }

  @override
  void dispose() {
  }
}
 