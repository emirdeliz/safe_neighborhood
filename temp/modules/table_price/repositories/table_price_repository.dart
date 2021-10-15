import 'package:app_digital_pricing/app/shared/config/server_custom.dart';
import 'package:app_digital_pricing/app/shared/graphql/table_price_query.dart';
import 'package:app_digital_pricing/app/shared/modules/auth/controller/auth_controller.dart';
import 'package:app_digital_pricing/app/shared/modules/table_price/model/table_price_data_model.dart';
import 'package:app_digital_pricing/app/shared/modules/table_price/repositories/table_price_repository_interface.dart';
import 'package:app_digital_pricing/app/shared/repositories/enum/util_enum.dart';
import 'package:app_digital_pricing/app/shared/repositories/util/util_repository_interface.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart';

class TablePriceRepository implements ITablePriceRepository {
  final IUtilRepository _utilRepository = Modular.get();

  @override
  Future<TablePriceDataModel> getTablePricesBySapCodeAndDeviceModel(
      String sapCode, String deviceId, String deviceModel) async {
    final AuthController _auth = Modular.get();
    final String url = ServerCustom.host;
    final String token = await _auth.getToken();
    final Map<String, dynamic> body = {
      'query':
          TablePriceQuery.buildQueryFindTablePriceSearchBySapCodeAndDeviceModel(
              sapCode, deviceId, deviceModel)
    };

    final Map<String, String> headers = {'authorization': 'bearer $token'};
    final Response response =
        await _utilRepository.fetch(url, EMethodHttp.post, body, headers);
    final String error = _utilRepository.hasError(response);

    if (error.isNotEmpty) {
      print('Exception occured: $error');
      throw error;
    }

    final dynamic result = _utilRepository.parseBodyResponseToJson(response);
    final dynamic data = result['data'];
    final TablePriceDataModel tablePriceData =
        await TablePriceDataModel.fromJson(data);
    return tablePriceData;
  }

  @override
  void dispose() {}
}
