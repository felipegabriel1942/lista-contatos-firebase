import 'package:floor/floor.dart';

@entity
class Contact {
  @PrimaryKey(autoGenerate: true)
  final int id;
  final String nome;
  final String email;
  final String telefone;

  Contact({
    this.id,
    this.nome,
    this.email,
    this.telefone,
  });
}
