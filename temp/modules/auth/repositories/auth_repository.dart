import 'package:app_digital_pricing/app/shared/config/error_message_custom.dart';
import 'package:app_digital_pricing/app/shared/config/server_custom.dart';
import 'package:app_digital_pricing/app/shared/graphql/auth_query.dart';
import 'package:app_digital_pricing/app/shared/modules/auth/model/auth_model.dart';
import 'package:app_digital_pricing/app/shared/repositories/enum/util_enum.dart';
import 'package:app_digital_pricing/app/shared/repositories/util/util_repository_interface.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart';

import 'auth_repository_interface.dart';

class AuthRepository implements IAuthRepository {
  final IUtilRepository _utilRepository = Modular.get();
  final String url = ServerCustom.host;

  Future<AuthModel> getToken(String cnpj, String password) async {
    final Map<String, dynamic> body = { 'query': AuthQuery.buildUserLoginWithPassword(cnpj, password) };
    final Response response = await _utilRepository.fetch(url, EMethodHttp.post, body);
    final String error = _utilRepository.hasError(response); 

    if (error.isNotEmpty) {
      print('Exception occured: $error');
      throw error;
    }
    
    final dynamic result = _utilRepository.parseBodyResponseToJson(response);
    final dynamic data = result['data'];
    final AuthModel auth = AuthModel.fromJson(data);
    return auth;
  }

  void renewToken(token) async {
    final Map<String, dynamic> body = { 'query': AuthQuery.buildRenewToken(token) };
    final Response response = await _utilRepository.fetch(url, EMethodHttp.post, body);
    final String error = _utilRepository.hasError(response); 
    if (error.isNotEmpty) {
      final String errorMsg = EErrorMessageCustom.occurredWhileRenewToken(error);
      print('Exception occured: $errorMsg');
      throw errorMsg;
    }
  }

  Future<String> recoveryPassword(String cnpj) async {
    final String url = ServerCustom.host;
    final Map<String, dynamic> body = { 'query': AuthQuery.buildUserResetPassword(cnpj) };
    final Response response = await _utilRepository.fetch(url, EMethodHttp.post, body);
    final String error = _utilRepository.hasError(response); 

    if (error.isNotEmpty) {
      final String errorMsg = 'Código: $error';
      print('Exception occured: $errorMsg');
      throw errorMsg;
    }
    final dynamic result = _utilRepository.parseBodyResponseToJson(response);
    final dynamic data = result['data'];
    final bool isRecovered = data['UserResetPassword'];
   
    if (!isRecovered) {
      final String errorMsg = EErrorMessageCustom.passwordCouldNotBeRetrieved(cnpj);
      print('Exception occured: $errorMsg');
      throw errorMsg;
    }
    return '';
  }

  void dispose() {
  }
}
