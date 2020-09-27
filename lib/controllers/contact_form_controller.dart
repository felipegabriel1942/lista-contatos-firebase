import 'package:get_it/get_it.dart';
import 'package:lista_contatos_firebase/data/database/app_database.dart';
import 'package:lista_contatos_firebase/data/model/contact.dart';
import 'package:mobx/mobx.dart';
part 'contact_form_controller.g.dart';

class ContactFormController = _ContactFormControllerBase
    with _$ContactFormController;

abstract class _ContactFormControllerBase with Store {
  final db = GetIt.I<AppDatabase>();

  @observable
  bool isBusy = false;

  @observable
  bool contatoFoiSalvo = false;

  @observable
  String nome;

  @action
  void setNome(String value) => nome = value;

  @observable
  String email;

  @action
  void setEmail(String value) => email = value;

  @observable
  String telefone;

  @action
  void setTelefone(String value) => telefone = value;

  Future<void> salvarContato() async {
    final contact = Contact(
      email: email,
      telefone: telefone,
      nome: nome,
    );

    await db.contactRepositoryDao.insertContact(contact);
    contatoFoiSalvo = true;
  }
}
