import 'package:floor/floor.dart';
import 'package:lista_contatos_firebase/data/model/contact.dart';
import 'package:lista_contatos_firebase/data/repositories/local/interfaces/contact_repository_dao_interface.dart';

@dao
abstract class ContactRepositoryDao extends IContactRepositoryDaoInterface<Contact> {

  @Query('SELECT * FROM Contact WHERE id = :id')
  Future<Contact> getById(int id);

  @Query('SELECT * FROM Contact')
  Future<List<Contact>> getAll();
}