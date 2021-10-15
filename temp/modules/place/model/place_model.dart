class PlaceModel {
  String sapCode = '';
  
  PlaceModel(String sapCode) {
    this.sapCode = sapCode;
  }

  static PlaceModel fromJson(Map<String, dynamic> json) {
    final bool hasData = json != null;
    return hasData ? new PlaceModel(
      json['codigo_sap']
    ) : null;
  }
}
