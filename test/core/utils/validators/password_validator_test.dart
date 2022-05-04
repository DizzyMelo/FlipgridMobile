import 'package:flipgrid_mobile/core/utils/validators/password_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late PasswordValidator passwordValidator;

  setUp(() {
    passwordValidator = PasswordValidator();
  });

  test('Should match the password requirements', () {
    String tPassword = "Hj201096@";
    var result = passwordValidator.valite(tPassword);
    expect(result, null);
  });

  test('Should not validate. Does not contain a symbol', () {
    String tPassword = "Hj2010960";
    var result = passwordValidator.valite(tPassword);
    expect(result,
        'Password must contain:\n8 characters \n1 symbol \n1 lowercase letter\n1 uppercase letter');
  });

  test('Should not validate. Does not contain an uppercase letter.', () {
    String tPassword = "sd201096@";
    var result = passwordValidator.valite(tPassword);
    expect(result,
        'Password must contain:\n8 characters \n1 symbol \n1 lowercase letter\n1 uppercase letter');
  });
  test('Should not validate. Does not contain a lowercase letter.', () {
    String tPassword = "KDKSK34@";
    var result = passwordValidator.valite(tPassword);
    expect(result,
        'Password must contain:\n8 characters \n1 symbol \n1 lowercase letter\n1 uppercase letter');
  });
  test('Should not validate. Does not contain at least 8 characters.', () {
    String tPassword = "Ksd34@";
    var result = passwordValidator.valite(tPassword);
    expect(result,
        'Password must contain:\n8 characters \n1 symbol \n1 lowercase letter\n1 uppercase letter');
  });
}
