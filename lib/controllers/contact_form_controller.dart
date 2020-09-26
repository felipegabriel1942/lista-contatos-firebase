import 'package:mobx/mobx.dart';
part 'contact_form_controller.g.dart';

class ContactFormController = _ContactFormControllerBase with _$ContactFormController;

abstract class _ContactFormControllerBase with Store {
  
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

  void salvar() {
    print(nome);
    print(email);
    print(telefone);
  }
}