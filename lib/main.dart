import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:lista_contatos_firebase/data/database/app_database.dart';
import 'package:lista_contatos_firebase/utils/app_routes.dart';
import 'package:lista_contatos_firebase/views/contact_form_screen.dart';
import 'package:lista_contatos_firebase/views/contact_list_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppDatabase db = await $FloorAppDatabase.databaseBuilder('app_database.db').build();
  GetIt.instance.registerSingleton<AppDatabase>(db);
  runApp(
    MyApp(),
  );
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
