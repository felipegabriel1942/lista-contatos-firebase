import 'package:get_it/get_it.dart';
import 'package:lista_contatos_firebase/data/model/contact.dart';
import 'package:mobx/mobx.dart';
import 'package:lista_contatos_firebase/data/database/app_database.dart';

part 'contact_list_controller.g.dart';

class ContactListController = _ContactListControllerBase with _$ContactListController;

abstract class _ContactListControllerBase with Store {
  final db = GetIt.I<AppDatabase>();

  @observable
  ObservableList<Contact> listaContatos = ObservableList();

  @observable
  bool isBusy = false;
  
  Future<void> loadContatos() async {
    isBusy = true;

    await db.contactRepositoryDao.getAll().then((value) {
      value.forEach((element) {
        listaContatos.add(element);
      });
    });

    isBusy = false;
  }
}