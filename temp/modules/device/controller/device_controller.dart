import 'dart:async';
import 'package:app_digital_pricing/app/shared/modules/device/model/device_model.dart';
import 'package:app_digital_pricing/app/shared/modules/device/repositories/device_repository_interface.dart';
import 'package:app_digital_pricing/app/shared/repositories/localstorage/local_storage_interface.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'device_controller.g.dart';

class DeviceController = _DeviceBase with _$DeviceController;

const String DEVICE_ID_KEY = 'deviceId';

abstract class _DeviceBase with Store {
  final IDeviceRepository _deviceRepository = Modular.get();
  final ILocalStorage _localStorage = Modular.get();

  Future<String> reset() async {
    _localStorage.put(DEVICE_ID_KEY, null);
    return Future.value();
  }

  Future<String> setDevice(DeviceModel device) async {
    _localStorage.put(DEVICE_ID_KEY, device.id);
    return Future.value();
  }

  Future<String> getDeviceId() async {
    final String deviceId = await _localStorage.get(DEVICE_ID_KEY);
    return Future.value(deviceId);
  }

  Future<DeviceModel> getDevice() async {
    final String deviceId = await _localStorage.get(DEVICE_ID_KEY);
    final DeviceModel device = await _deviceRepository.getDeviceById(deviceId);
    return Future.value(device);
  }

  Future<bool> hasDevice() async {
    return await this.getDeviceId() != null;
  }
}
