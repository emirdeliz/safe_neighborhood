import 'package:app_digital_pricing/app/shared/modules/auth/model/auth_model.dart';
import 'package:flutter_modular/flutter_modular.dart';

abstract class IAuthRepository implements Disposable {
  Future<AuthModel> getToken(String cnpj, String password);
  Future<String> recoveryPassword(String cnpj);
  void renewToken(token);
}