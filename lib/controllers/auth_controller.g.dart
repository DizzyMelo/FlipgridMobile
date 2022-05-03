// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthController on AuthControllerBase, Store {
  final _$isLoadingAtom = Atom(name: 'AuthControllerBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$isPasswordObscureAtom =
      Atom(name: 'AuthControllerBase.isPasswordObscure');

  @override
  bool get isPasswordObscure {
    _$isPasswordObscureAtom.reportRead();
    return super.isPasswordObscure;
  }

  @override
  set isPasswordObscure(bool value) {
    _$isPasswordObscureAtom.reportWrite(value, super.isPasswordObscure, () {
      super.isPasswordObscure = value;
    });
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
isPasswordObscure: ${isPasswordObscure}
    ''';
  }
}
