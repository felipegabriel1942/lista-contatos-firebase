import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:lista_contatos_firebase/controllers/contact_form_controller.dart';
import 'package:lista_contatos_firebase/data/model/contact.dart';
import 'package:mobx/mobx.dart';

class ContactFormScreen extends StatefulWidget {
  @override
  _ContactFormScreenState createState() => _ContactFormScreenState();
}

class _ContactFormScreenState extends State<ContactFormScreen> {
  final controller = ContactFormController();

  ReactionDisposer disposer;

  @override
  void initState() {
    super.initState();
    disposer = autorun((_) {
      if (controller.contatoFoiSalvo) {
        Navigator.of(context).pop();
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final contact = ModalRoute.of(context).settings.arguments as Contact;
    if(contact != null) {
      controller.setId(contact.id);
      controller.setNome(contact.nome);
      controller.setTelefone(contact.telefone);
      controller.setEmail(contact.email);
    }
  }

  @override
  void dispose() {
    disposer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novo contato'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                initialValue: controller.nome,
                decoration: InputDecoration(
                  labelText: 'Nome',
                ),
                onChanged: controller.setNome,
              ),
              TextFormField(
                initialValue: controller.telefone,
                decoration: InputDecoration(
                  labelText: 'Telefone',
                ),
                onChanged: controller.setTelefone,
              ),
              TextFormField(
                initialValue: controller.email,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
                onChanged: controller.setEmail,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.salvarContato,
        child: Icon(
          Icons.save,
        ),
      ),
    );
  }
}
