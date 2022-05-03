import 'package:validators/validators.dart';

class FormValidator {
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "The password is required";
    }
    return null;
  }

  static String? validateEmailAddress(String? value) {
    if (value == null || value.isEmpty) {
      return "The email is required";
    }

    if (!isEmail(value)) {
      return "Invalid email format";
    }
    return null;
  }

  static String? validateWebsite(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }

    if (!isURL(value)) {
      return "Invalid website format";
    }
    return null;
  }
}
