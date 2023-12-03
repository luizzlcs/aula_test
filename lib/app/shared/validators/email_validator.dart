class EmailValidator {
  String? validator({String? email}) {
    if (email == null || email.isEmpty) {
      return 'O e-mail é obrigatório';
    }

    final emailRegex =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

    if (!emailRegex.hasMatch(email)) {
      return 'O e-mail é inválido';
    }

    return null;
  }
}