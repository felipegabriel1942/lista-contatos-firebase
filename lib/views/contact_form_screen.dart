import 'package:flutter/material.dart';
import 'package:lista_contatos_firebase/controllers/contact_form_controller.dart';
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
      if(controller.contatoFoiSalvo) {
        Navigator.of(context).pop(true);
      }
    });
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
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nome',
                ),
                onChanged: controller.setNome,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Telefone',
                ),
                onChanged: controller.setTelefone,
              ),
              TextField(
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
