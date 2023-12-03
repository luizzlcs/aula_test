  class PasswordValidator {
  String? validator({String? password}) {
    if (password == null || password.isEmpty) {
      return 'A senha é obrigatória';
    }

    if (password.length < 6) {
      return 'Número de caracteres insuficiente';
    }

    final passwordRegex = RegExp(r'^(?=.*[a-zA-Z])(?=.*[0-9]).+$');

    if (!passwordRegex.hasMatch(password)) {

      return 'A senha não é composta por caracteres alfanumericos';
    }
    return null;
  }
}