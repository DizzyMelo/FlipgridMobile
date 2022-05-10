import 'package:validators/validators.dart';

import '../../../domain/validators/validator.dart';

class WebsiteValidator implements IValidator {
  @override
  String? valite(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }

    if (!isURL(value)) {
      return "Invalid website format";
    }
    return null;
  }
}
