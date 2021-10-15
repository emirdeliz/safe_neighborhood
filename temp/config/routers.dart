class Routers {
  static const String SPLASH = '/';
  static const String LOGIN = '/login';
  static const String HOME = '/home';
  static const String PRICING = '/pricing';
  static const String DEVICES = '/devices';
  static const String SEE_MORE = '/seemore';
}

class PricingParams {
  final int financingInstallmentsPre;
  final int financingInstallmentsPos;
  final int financingInstallmentsControl;

  PricingParams(this.financingInstallmentsPre, this.financingInstallmentsPos, this.financingInstallmentsControl);
}