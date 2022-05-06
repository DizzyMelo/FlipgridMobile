import 'user_friendly_exception.dart';

class CustomException implements UserFriendlyException {
  String detail;
  int code;
  dynamic innerException;

  CustomException({
    required this.detail,
    this.innerException,
    required this.code,
  });

  @override
  String getUserFriendlyMessage() {
    return detail;
  }

  @override
  String toString() {
    return getUserFriendlyMessage();
  }

  @override
  int getCode() {
    return code;
  }
}
