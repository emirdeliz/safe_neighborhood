import 'package:app_digital_pricing/app/shared/modules/place/model/place_model.dart';
import 'package:flutter_modular/flutter_modular.dart';

abstract class IPlaceRepository implements Disposable {
  Future<PlaceModel> getPlaceByCNPJ(String cnpj);
}