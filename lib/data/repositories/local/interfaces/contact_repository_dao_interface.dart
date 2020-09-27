import 'package:floor/floor.dart';
import 'package:lista_contatos_firebase/data/model/contact.dart';

abstract class IContactRepositoryDaoInterface<Entity extends Contact> {

  @insert
  Future<int> insertContact(Contact contact);

  @update
  Future<int> updateContact(Contact contact);

  @delete
  Future<int> deleteContact(Contact contact);

}