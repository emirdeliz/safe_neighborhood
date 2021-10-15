enum EMethodHttp {
  get,
  post,
  put,
  delete
}

class EStatusHttp {
  static const int successful = 200;
  static const int invalidToken = 401;
  static const int invalidLogin = 404;
}