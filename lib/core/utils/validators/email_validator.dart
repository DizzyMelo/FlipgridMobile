import 'package:flipgrid_mobile/core/domain/validators/validator.dart';
import 'package:validators/validators.dart';

class EmailValidator implements IValidator {
  @override
  String? valite(String? value) {
    if (value == null || value.isEmpty) {
      return "The email is required";
    }

    if (!isEmail(value)) {
      return "Invalid email format";
    }
    return null;
  }
}
