class PlaceQuery {
  static String buildQueryFindPlaceByCNPJ(String cnpj) {
    final String query = '''
      query PlaceFindOne {
        PlaceFindOne(filter:{CNPJ: "$cnpj"}) {
          codigo_sap
        }
      }
    ''';
    return query;
  }
}