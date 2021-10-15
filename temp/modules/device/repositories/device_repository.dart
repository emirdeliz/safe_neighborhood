import 'package:app_digital_pricing/app/shared/config/server_custom.dart';
import 'package:app_digital_pricing/app/shared/graphql/device_query.dart';
import 'package:app_digital_pricing/app/shared/modules/auth/controller/auth_controller.dart';
import 'package:app_digital_pricing/app/shared/modules/device/model/device_model.dart';
import 'package:app_digital_pricing/app/shared/modules/device/repositories/device_repository_interface.dart';
import 'package:app_digital_pricing/app/shared/repositories/enum/util_enum.dart';
import 'package:app_digital_pricing/app/shared/repositories/util/util_repository_interface.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart';

class DeviceRepository implements IDeviceRepository {
  final IUtilRepository _utilRepository = Modular.get();
  final AuthController _auth = Modular.get();

  @override
  Future<DeviceModel> getDeviceById(String id) async {
    final String url = ServerCustom.host;
    final String token = await _auth.getToken();

    final Map<String, dynamic> body = { 'query': DeviceQuery.buildQueryFindDeviceById(id) };
    final Map<String, String> headers = { 'authorization': 'bearer $token' };

    final Response response = await _utilRepository.fetch(url, EMethodHttp.post, body, headers);
    final String error = _utilRepository.hasError(response); 
    
    if (error.isNotEmpty) {
      print('Exception occured: $error');
      throw error;
    }

    final dynamic result = _utilRepository.parseBodyResponseToJson(response);
    final dynamic data = result['data'];
    final DeviceModel device = DeviceModel.fromJson(data['DeviceFindOne']);
    return device;
  }

  @override
  void dispose() {
  }
}
