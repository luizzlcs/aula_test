import 'package:aula_test/app/shared/auth/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Register register;

  setUp(() {
    register = Register();
  });

  group('Validar registro de e-mail', () {
    test(
      'Deve retornar uma mensagem de erro caso e-mail ou senha sejam inválidos',
      () {
        final result = register.register(
          email: 'luizzlcs@',
          password: '12312',
        );
        debugPrint(result);
        expect(result, isA<String>());
      },
    );
  });
}
