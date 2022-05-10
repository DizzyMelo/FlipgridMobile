abstract class UserFriendlyException implements Exception {
  String getUserFriendlyMessage();
  int getCode();

  @override
  String toString() {
    return getUserFriendlyMessage();
  }
}
