import 'package:flutter/material.dart';
import 'package:lista_contatos_firebase/utils/app_routes.dart';
import 'package:lista_contatos_firebase/views/contact_form_screen.dart';
import 'package:lista_contatos_firebase/views/contact_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        AppRoutes.CONTACTS_LIST: (context) => ContactListScreen(),
        AppRoutes.CONTACTS_FORM: (context) => ContactFormScreen(),
      },
    );
  }
}
