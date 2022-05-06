// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirmation_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ConfirmationController on ConfirmationControllerBase, Store {
  late final _$userAtom =
      Atom(name: 'ConfirmationControllerBase.user', context: context);

  @override
  UserSignUpEntity get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UserSignUpEntity value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$confirmationGreetingAtom = Atom(
      name: 'ConfirmationControllerBase.confirmationGreeting',
      context: context);

  @override
  String get confirmationGreeting {
    _$confirmationGreetingAtom.reportRead();
    return super.confirmationGreeting;
  }

  @override
  set confirmationGreeting(String value) {
    _$confirmationGreetingAtom.reportWrite(value, super.confirmationGreeting,
        () {
      super.confirmationGreeting = value;
    });
  }

  @override
  String toString() {
    return '''
user: ${user},
confirmationGreeting: ${confirmationGreeting}
    ''';
  }
}
