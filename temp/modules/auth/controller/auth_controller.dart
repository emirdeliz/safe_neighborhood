import 'dart:async';
import 'package:app_digital_pricing/app/shared/modules/auth/model/auth_model.dart';
import 'package:app_digital_pricing/app/shared/modules/auth/repositories/auth_repository_interface.dart';
import 'package:app_digital_pricing/app/shared/modules/place/model/place_model.dart';
import 'package:app_digital_pricing/app/shared/modules/place/repositories/place_repository_interface.dart';
import 'package:app_digital_pricing/app/shared/repositories/localstorage/local_storage_interface.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'auth_controller.g.dart';

class AuthController = _AuthBase with _$AuthController;

const String TOKEN_KEY = 'token';
const String SAP_CODE_KEY = 'sapCode';

abstract class _AuthBase with Store {
  final IAuthRepository _authRepository = Modular.get();
  final ILocalStorage _localStorage = Modular.get();

  Future<String> login(String cnpj, String password) async {
    try {
      final AuthModel result = await _authRepository.getToken(cnpj, password);
      final String token = result.token;
      final bool wasAuthenticated = token != null;

      if (wasAuthenticated) {
        await this.setToken(token);
        await this.setSapCode(cnpj);
      }
      return Future.value();
    } catch(e) {
      return Future.value(e.toString());
    }
  }

  Future<String> renewToken() async {
    try {
      final String token = await this.getToken();
      _authRepository.renewToken(token);
      return Future.value();
    } catch(e) {
      return Future.value(e.toString());
    }
  }

  Future<String> setSapCode(String cnpj) async {
    final IPlaceRepository _placeRepository = Modular.get();
    final PlaceModel place = await _placeRepository.getPlaceByCNPJ(cnpj);
    final bool hasPlace = place != null;

    if (!hasPlace) {
      throw 'Não foi encontrado um local para o cnpj informado($cnpj). Verifique o cadastro de locais';
    }
    await _localStorage.put(SAP_CODE_KEY, place.sapCode);
    return Future.value();
  }

  Future<String> recoveryPassword(String cnpj) async {
    try {
      final String result = await _authRepository.recoveryPassword(cnpj);
      return Future.value(result);
    } catch(e) {
      return Future.value(e.toString());
    }
  }

  Future<String> setToken(String t) async {
    final String token = await _localStorage.put(TOKEN_KEY, t);
    return token;
  }

  Future<String> getToken() async {
    final String token = await _localStorage.get(TOKEN_KEY);
    return token;
  }

  Future<String> getSapCode() async {
    final String sapCode = await _localStorage.get(SAP_CODE_KEY);
    return sapCode;
  }

  Future<String> reset() async {
    _localStorage.put(TOKEN_KEY, null);
    _localStorage.put(SAP_CODE_KEY, null);
    return Future.value();
  }

  Future<bool> userIsLoggedIn() async {
    final String token = await getToken();
    final bool isLogged = token != null;
    return Future.value(isLogged);
  }

  void logout() {
    this.setToken(null);
  }
}
