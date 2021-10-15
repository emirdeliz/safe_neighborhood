class PlanDeviceModel {
  String planPre = '';
  String planPos = '';
  String planControl = '';
  String model = '';
  List<String> codeProvider = [];
  
  PlanDeviceModel({
    this.planPre,
    this.planPos,
    this.planControl,
    this.codeProvider,
    this.model
  });

  static PlanDeviceModel fromJson(Map<String, dynamic> json) {
    final bool hasData = json != null;
    final dynamic device = hasData ? json['device'] : null;

    return hasData ? new PlanDeviceModel(
      planPre: json['planPre'],
      planPos: json['planPos'],
      planControl: json['planControl'],
      codeProvider: device != null ? device['codeProvider'] : [],
      model: device != null ? device['model'] : ''
    ) : null;
  }
}
