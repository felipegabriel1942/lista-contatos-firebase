// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_form_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ContactFormController on _ContactFormControllerBase, Store {
  final _$nomeAtom = Atom(name: '_ContactFormControllerBase.nome');

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  final _$emailAtom = Atom(name: '_ContactFormControllerBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$telefoneAtom = Atom(name: '_ContactFormControllerBase.telefone');

  @override
  String get telefone {
    _$telefoneAtom.reportRead();
    return super.telefone;
  }

  @override
  set telefone(String value) {
    _$telefoneAtom.reportWrite(value, super.telefone, () {
      super.telefone = value;
    });
  }

  final _$_ContactFormControllerBaseActionController =
      ActionController(name: '_ContactFormControllerBase');

  @override
  void setNome(String value) {
    final _$actionInfo = _$_ContactFormControllerBaseActionController
        .startAction(name: '_ContactFormControllerBase.setNome');
    try {
      return super.setNome(value);
    } finally {
      _$_ContactFormControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_ContactFormControllerBaseActionController
        .startAction(name: '_ContactFormControllerBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_ContactFormControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTelefone(String value) {
    final _$actionInfo = _$_ContactFormControllerBaseActionController
        .startAction(name: '_ContactFormControllerBase.setTelefone');
    try {
      return super.setTelefone(value);
    } finally {
      _$_ContactFormControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome},
email: ${email},
telefone: ${telefone}
    ''';
  }
}
