import 'dart:convert';

import 'package:app_digital_pricing/app/shared/modules/table_price/model/plan_device_model.dart';
import 'package:app_digital_pricing/app/shared/modules/table_price/model/table_price_model.dart';
import 'package:app_digital_pricing/app/shared/util/device_util.dart';
import 'package:app_digital_pricing/app/shared/util/number_util.dart';

class PriceModel {
  int codeTim;
  double pre = 0;
  double pos = 0;
  double control = 0;

  PriceModel({
    this.codeTim,
    this.pre,
    this.pos,
    this.control
  });

  static Future<PlanDeviceModel> getDevicePlans(TablePriceModel tablePrice) async {
    final String deviceModel = await getDeviceModel();
    final String planPosDefault = tablePrice.planPos;
    final String planPreDefault = tablePrice.planPre;
    final String planControlDefault = tablePrice.planControl;
    final List<PlanDeviceModel> plansDevice = tablePrice.plansDevice;

    final PlanDeviceModel planDevice = plansDevice.firstWhere((p) {
      return p != null && p.codeProvider != null && p.codeProvider.contains(deviceModel);
    }, orElse: () => new PlanDeviceModel(
      model: deviceModel,
      planPos: planPosDefault,
      planPre: planPreDefault,
      planControl: planControlDefault
    ));
    return planDevice;
  }

  static dynamic buildPlanValues(Map<String, dynamic> json, PlanDeviceModel plansDevice, String deviceName) {
    final String planPosStr = '${json[plansDevice.planPos] ?? 0}';
    final String planPreStr = '${json[plansDevice.planPre] ?? 0}';
    final String planControlStr = '${json[plansDevice.planControl] ?? 0}';

    return {
      'pos': tryDoubleParse(planPosStr),
      'pre': tryDoubleParse(planPreStr),
      'control': tryDoubleParse(planControlStr),
    };
  }

  static Future<PriceModel> fromJsonXlsAsStr(String jsonStr, TablePriceModel tablePrice, String deviceName) async {
    final bool hasData = jsonStr != null;
    if (!hasData) {
      return null;
    }

    final Map<String, dynamic> json = jsonDecode(jsonStr);
    final PlanDeviceModel plansDevice = await getDevicePlans(tablePrice);
    final dynamic plansValues = buildPlanValues(json, plansDevice, deviceName);

    return new PriceModel(
      control: plansValues['control'],
      pre: plansValues['pre'],
      pos: plansValues['pos'],
      codeTim: json['CÓDIGO'],
    );
  }
}
