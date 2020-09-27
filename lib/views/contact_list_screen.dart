import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:lista_contatos_firebase/controllers/contact_list_controller.dart';
import 'package:lista_contatos_firebase/utils/app_routes.dart';

class ContactListScreen extends StatefulWidget {
  @override
  _ContactListScreenState createState() => _ContactListScreenState();
}

class _ContactListScreenState extends State<ContactListScreen> {
  final controller = GetIt.I<ContactListController>();

  @override
  void initState() {
    super.initState();
    controller.loadContatos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos'),
      ),
      body: Observer(
        builder: (_) {
          return controller.isBusy
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: controller.listaContatos.length,
                  itemBuilder: (_, index) {
                    return Column(
                      children: [
                        ListTile(
                          title: Text(
                            controller.listaContatos[index].nome == null
                                ? ''
                                : controller.listaContatos[index].nome,
                          ),
                          subtitle: Text(
                              '${controller.listaContatos[index].email} | ${controller.listaContatos[index].telefone}'),
                          trailing: Container(
                            width: 100,
                            child: Row(
                              children: [
                                IconButton(
                                  color: Colors.blue,
                                  icon: Icon(Icons.edit),
                                  onPressed: () {
                                    Navigator.of(context).pushNamed(
                                      AppRoutes.CONTACTS_FORM,
                                      arguments:
                                          controller.listaContatos[index],
                                    );
                                  },
                                ),
                                IconButton(
                                  color: Colors.red,
                                  icon: Icon(
                                    Icons.delete,
                                  ),
                                  onPressed: () {
                                    controller.excluirContato(
                                        controller.listaContatos[index].id);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider()
                      ],
                    );
                  },
                );
        },
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
