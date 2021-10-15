import 'package:flutter/services.dart';

const platform = const MethodChannel('flutter.native/helper');
Future<String> getDeviceTypeFromNativeCode(methodName) async {
  String response = '';
  try {
    final String result = await platform.invokeMethod(methodName);
    response = result;
  } catch (e) {
    response = 'Failed to Invoke: "${e.message}".';
  }
  /**
   * Para o android o nome do dispositivo é pego através do bluetooth. 
   * Verificar o código kotlin usado para pegar os dado para mais detalhes. 
   */
  return response;
}

Future<String> getDeviceModel() async {
  final model = await getDeviceTypeFromNativeCode('getDeviceModel');
  return model;
}

Future<String> getDeviceName() async {
  final name = await getDeviceTypeFromNativeCode('getDeviceName');
  return name;
}

