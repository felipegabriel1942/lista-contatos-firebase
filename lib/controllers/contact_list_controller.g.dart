// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_list_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ContactListController on _ContactListControllerBase, Store {
  final _$listaContatosAtom =
      Atom(name: '_ContactListControllerBase.listaContatos');

  @override
  ObservableList<Contact> get listaContatos {
    _$listaContatosAtom.reportRead();
    return super.listaContatos;
  }

  @override
  set listaContatos(ObservableList<Contact> value) {
    _$listaContatosAtom.reportWrite(value, super.listaContatos, () {
      super.listaContatos = value;
    });
  }

  final _$isBusyAtom = Atom(name: '_ContactListControllerBase.isBusy');

  @override
  bool get isBusy {
    _$isBusyAtom.reportRead();
    return super.isBusy;
  }

  @override
  set isBusy(bool value) {
    _$isBusyAtom.reportWrite(value, super.isBusy, () {
      super.isBusy = value;
    });
  }

  @override
  String toString() {
    return '''
listaContatos: ${listaContatos},
isBusy: ${isBusy}
    ''';
  }
}
