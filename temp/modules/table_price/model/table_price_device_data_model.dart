import 'package:app_digital_pricing/app/shared/modules/device/model/device_model.dart';
import 'package:app_digital_pricing/app/shared/modules/table_price/model/price_model.dart';
import 'package:app_digital_pricing/app/shared/modules/table_price/model/table_price_model.dart';

class TablePriceDeviceDataModel {
  DeviceModel device;
  PriceModel price;

  TablePriceDeviceDataModel({
    this.device,
    this.price,
  });

  static Future<TablePriceDeviceDataModel> fromJson(
    Map<String, dynamic> json, TablePriceModel tablePrice
  ) async {
    final bool hasData = json != null;
    if (!hasData) {
      return null;
    }

    final DeviceModel device = DeviceModel.fromJson(json['device']);
    final bool hasDevice = device != null;
    return new TablePriceDeviceDataModel(
      device: device,
      price: await PriceModel.fromJsonXlsAsStr(
        json['deviceDataAsJsonStr'], tablePrice, hasDevice ? device.model : ''
      )
    );
  }
}
