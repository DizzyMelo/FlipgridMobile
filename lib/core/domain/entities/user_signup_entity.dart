import 'package:flipgrid_mobile/core/domain/entities/user_entity.dart';

class UserSignUpEntity extends UserEntity {
  late String _password;
  String? _website;

  String get password => _password;

  set setPassword(password) {
    _password = password;
  }

  String? get website => _website;

  set setWebsite(website) {
    _website = website;
  }
}
