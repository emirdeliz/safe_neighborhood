import 'package:app_digital_pricing/app/shared/modules/table_price/model/table_price_data_model.dart';
import 'package:flutter_modular/flutter_modular.dart';

abstract class ITablePriceRepository implements Disposable {
  Future<TablePriceDataModel> getTablePricesBySapCodeAndDeviceModel(String sapCode, String deviceId, String deviceModel);
}