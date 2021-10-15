class AuthModel {
  String token = '';

  AuthModel({
    this.token,
  });

  AuthModel.token(String token) {
    this.token = token;
  }

  void setToken(String token) {
    this.token = token;
  }

  static AuthModel fromJson(dynamic json) {
    final bool hasData = json != null;
    final dynamic graphqlData = hasData ? json['UserLoginWithPassword'] : {};
    final dynamic tokenData = graphqlData['token'];
    return new AuthModel.token(tokenData['token']);
  }
}
