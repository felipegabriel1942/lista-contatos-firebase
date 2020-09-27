import 'dart:async';
import 'package:floor/floor.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:lista_contatos_firebase/data/model/contact.dart';
import 'package:lista_contatos_firebase/data/repositories/local/contact_repository_dao.dart';

part 'app_database.g.dart';

@Database(version: 1, entities: [Contact])
abstract class AppDatabase extends FloorDatabase {
  ContactRepositoryDao get contactRepositoryDao;
}
