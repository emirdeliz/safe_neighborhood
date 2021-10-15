class AuthQuery {
  static String buildUserLoginWithPassword(String cnpj, String password) {
    final String query = '''
      mutation UserLoginWithPassword {
        UserLoginWithPassword(
          user: "$cnpj"
          password: "$password"
        ) {
          CNPJ
          token {
            iat
            token
          }
        }
      }
    ''';
    return query;
  }

  static String buildRenewToken(String token) {
    final query = '''
      
    ''';
    return query;
  }

  static String buildUserResetPassword(String cnpj) {
    final String query = '''
      mutation UserResetPassword {
        UserResetPassword(user: "$cnpj")
      }
    ''';
    return query;
  }
}