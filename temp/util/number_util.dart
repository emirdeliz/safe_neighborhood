double tryDoubleParse(String value) {
  try {
    return double.parse(value);
  } catch(error) {
    print('Exception occured: $error');
    return null;
  }
}