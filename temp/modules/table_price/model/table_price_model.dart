import 'package:app_digital_pricing/app/shared/modules/table_price/model/plan_device_model.dart';

class TablePriceModel {
  String coolText = '';
  String planPre = '';
  String planPos = '';
  String planControl = '';
  List<PlanDeviceModel> plansDevice = [];

  TablePriceModel({
    this.coolText,
    this.planPre,
    this.planPos,
    this.planControl,
    this.plansDevice
  });

  static TablePriceModel fromJson(Map<String, dynamic> json) {
    final bool hasData = json != null;
    return hasData ? new TablePriceModel(
      coolText: json['coolText'],
      planPre: json['planPre'],
      planPos: json['planPos'],
      planControl: json['planControl'],
      plansDevice: List.from((json['plansDevice'] ?? []).map((p) {
        return PlanDeviceModel.fromJson(p);
      }))
    ) : null;
  }
}
