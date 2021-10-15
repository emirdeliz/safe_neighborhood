class EErrorMessageCustom {
  static const String invalidToken = 'O token usado para autenticar seu usuário é inválido. Reinicie as configurações do app e tente novamente.';
  static const String invalidLogin = 'Usuário ou senha inválidos';
  static const String unknownError = 'Ocorreu um erro desconhecido.';
  static const String unidentifiedDevice = 'Dispositivo não identificado';
  static const String pleaseCheckEmailCnpj = 'Favor, verificar o e-mail cadastrado para esse CNPJ';
  static const String pleaseInformCnpjRecoveryPassword = 'Favor, informar o CNPJ para recuperar a senha.';
  static const String occurredWhileLogging = 'Ocorreu um erro ao logar';
  static const String ops = 'Ops!';
  static String tablePriceNotFound (String sapCode) {
    return 'A tabela de preço com cógico sap "$sapCode" não foi encontrado.';
  }
  static String deviceTablePriceNotFound (String deviceName) {
    return 'Não foi encontrado nenhum dispositivo na tabela de preço para o modelo "$deviceName".';
  }
  static String deviceSpreadsheetTablePriceNotFound (String device, String sapCode) {
    return 'Não foi encontrado o dispositivo "$device" na planilha relacionada a tabela de preço com código sap "$sapCode"';
  }
  static String deviceSpreadsheetCodeTimTablePriceNotFound (String sapCode) {
    return 'Não foi localizado um dispositivo na planilha relacionada a tabela de preço com código sap "$sapCode". Verifique se o código TIM cadastrado no device está na planilha.';
  }
  static String deviceCodeTimNotFound (int codeTim) {
    return 'Não foi encontrado um dispositivo com o código TIM "$codeTim"';
  }
  static String deviceIdNotFound (String deviceId) {
    return 'Não foi encontrado um dispositivo com o seguinte id "$deviceId"';
  }
  static String occurredWhileRenewToken (String error) {
    return 'Ocorreu um erro ao renovar o token $error';
  }
  static String passwordCouldNotBeRetrieved (String cnpj) {
    return 'Não foi possível recuperar a senha. Verifique se o CNPJ "$cnpj" está correto e tente novamente.';
  }
}