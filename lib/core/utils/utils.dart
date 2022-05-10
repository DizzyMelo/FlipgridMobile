import 'package:validators/validators.dart';

import '../../domain/exception/custom_exception.dart';

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
