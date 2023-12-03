import 'package:aula_test/app/shared/validators/password_validator.dart';
import 'package:flutter_test/flutter_test.dart';



void main() {
  late PasswordValidator passwordValidator;

  setUp(() {
    passwordValidator = PasswordValidator();
  });
  group('Validar campo de e-mail', () {
    test('Dever retornar uma mensagem de erro caso senha seja nula', () {
      final result = passwordValidator.validator();

      expect(result, equals('A senha é obrigatória'));
    });

    test('Dever retornar uma mensagem de erro caso senha seja vazia', () {
      final result = passwordValidator.validator(password: '');

      expect(result, equals('A senha é obrigatória'));
    });

    test(
        'Dever retornar uma mensagem de erro caso a contagem de caracteres seja menor que 6',
        () {
      final result = passwordValidator.validator(password: 'ana');

      expect(result, equals('Número de caracteres insuficiente'));
    });

    test('Deve retornar uma mensagem de erro quando não conter caracteres alfanumericos', (){
      final result = passwordValidator.validator(password: 'ana129');

      expect(result, 'A senha não é composta por caracteres alfanumericos');
    });
  });
}
