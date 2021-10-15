class TablePriceQuery {
  static String buildQueryFindTablePriceSearchBySapCodeAndDeviceModel(
      String sapCode, String deviceId, String deviceModel) {
    final String query = '''
      query TablePriceSearchBySapCodeAndDeviceModel {
        TablePriceSearchBySapCodeAndDeviceModel(sapCode:["$sapCode"], deviceId: "$deviceId", deviceModel: "$deviceModel") {
          tablePrice {
            planPre
            planPos
            planControl
            
            plansDevice {
              planPos
              planControl
              device {
                model
              }
            }
            coolText
          }
          items {
            deviceDataAsJsonStr
            device {
              _id
              model
              featured
              internalMemory
              availableColors
            }
          }
        }
      }
    ''';
    return query;
  }
}
