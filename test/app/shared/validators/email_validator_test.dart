import 'package:aula_test/app/shared/validators/email_validator.dart';
import 'package:flutter_test/flutter_test.dart';



void main() {
  late EmailValidator emailValidator;

  setUp(() {
    emailValidator = EmailValidator();
  });
  group('Validar campo de e-mail', () {
    test('Deve retornar uma messagem de erro caso o e-mail seja nulo.', () {
      final result = emailValidator.validator();

      expect(result, equals('O e-mail é obrigatório'));
    });

    test('Deve retornar uma messagem de erro caso o e-mail seja vazio.', () {
      final result = emailValidator.validator(email: '');

      expect(result, equals('O e-mail é obrigatório'));
    });

    test('Deve retornar uma messagem de erro caso o e-mail seja inválido.', () {
      final result = emailValidator.validator(email: 'luizzlcs');

      expect(result, equals('O e-mail é inválido'));
    });

    test('Deve retornar null caso o e-mail seja válido.', () {
      final result = emailValidator.validator(email: 'luizzlcs@gmail.com');

      expect(result, isNull);
    });
    
  });
}
