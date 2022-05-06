import 'package:flipgrid_mobile/core/domain/exception/custom_exception.dart';
import 'package:validators/validators.dart';

class Utils {
  static Uri validateUrl(String url) {
    if (!isURL(url)) {
      throw CustomException(detail: "The url is not valid", code: 1);
    }

    if (!url.contains("http")) {
      return Uri.parse("https://$url");
    }
    return Uri.parse(url);
  }
}
