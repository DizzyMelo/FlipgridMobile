import 'package:flipgrid_mobile/core/domain/validators/validator.dart';
import 'package:validators/validators.dart';

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
