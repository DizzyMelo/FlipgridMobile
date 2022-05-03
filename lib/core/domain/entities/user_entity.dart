class UserEntity {
  late String _email;
  String? _firstName;

  String get email => _email;

  set setEmail(email) {
    _email = email;
  }

  String? get firstName => _firstName;

  set setFirstName(firstName) {
    _firstName = firstName;
  }
}
