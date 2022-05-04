import 'package:flipgrid_mobile/core/domain/validators/validator.dart';

class PasswordValidator implements Validator {
  @override
  String? valite(String? value) {
    if (value == null || value.isEmpty) {
      return "The password is required";
    }

    return null;
  }
}
