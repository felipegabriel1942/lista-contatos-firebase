import 'package:flutter/material.dart';
import 'package:lista_contatos_firebase/utils/app_routes.dart';

class ContactListScreen extends StatefulWidget {
  @override
  _ContactListScreenState createState() => _ContactListScreenState();
}

class _ContactListScreenState extends State<ContactListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text('Lista'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(AppRoutes.CONTACTS_FORM);
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
