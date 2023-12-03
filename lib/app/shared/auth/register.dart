import 'package:aula_test/app/shared/validators/email_validator.dart';
import 'package:aula_test/app/shared/validators/password_validator.dart';

class Register {
  String? register({String? email, String? password}) {
    final resulEmail = EmailValidator().validator(email: email);
    final resultPassword = PasswordValidator().validator(password: password);

    return resulEmail ?? resultPassword;
  }
}