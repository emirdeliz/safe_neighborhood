import 'package:app_digital_pricing/app/shared/modules/table_price/model/table_price_device_data_model.dart';
import 'package:app_digital_pricing/app/shared/modules/table_price/model/table_price_model.dart';

class TablePriceDataModel {
  TablePriceModel tablePrice;
  List<TablePriceDeviceDataModel> items;

  TablePriceDataModel({
    this.tablePrice,
    this.items
  });

  static Future<TablePriceDataModel> fromJson(Map<String, dynamic> json) async {
    final bool hasData = json != null;
    final bool hasResult = hasData && json['TablePriceSearchBySapCodeAndDeviceModel'] != null;
    if (!hasData || !hasResult) {
      return null;
    }

    final dynamic result = json['TablePriceSearchBySapCodeAndDeviceModel'];
    final TablePriceModel tablePrice = TablePriceModel.fromJson(result['tablePrice']);
    final List<TablePriceDeviceDataModel> items = await Stream.fromIterable((result['items'] ?? []))
      .asyncMap((i) => TablePriceDeviceDataModel.fromJson(i, tablePrice))
      .toList();
    
    return new TablePriceDataModel(
      tablePrice: tablePrice,
      items: items
    );
  }
}
