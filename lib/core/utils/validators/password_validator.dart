import '../../../domain/validators/validator.dart';

class PasswordValidator implements IValidator {
  @override
  String? valite(String? value) {
    if (value == null || value.isEmpty) {
      return "The password is required";
    }

    String pattern = r'(^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[#?!@$%^&*-]).{8,}$)';
    RegExp regExp = RegExp(pattern);

    if (!regExp.hasMatch(value)) {
      return 'Password must contain:\n8 characters \n1 symbol \n1 lowercase letter\n1 uppercase letter';
    }

    return null;
  }
}
