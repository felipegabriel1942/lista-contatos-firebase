import 'package:flutter/material.dart';
import 'package:lista_contatos_firebase/controllers/contact_form_controller.dart';

class ContactFormScreen extends StatefulWidget {
  @override
  _ContactFormScreenState createState() => _ContactFormScreenState();
}

class _ContactFormScreenState extends State<ContactFormScreen> {

  final controller = ContactFormController();

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
        onPressed: controller.salvar,
        child: Icon(
          Icons.save,
        ),
      ),
    );
  }
}
