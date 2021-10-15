import 'package:app_digital_pricing/app/shared/modules/device/model/device_model.dart';
import 'package:flutter_modular/flutter_modular.dart';

abstract class IDeviceRepository implements Disposable {
  Future<DeviceModel> getDeviceById(String id);
}