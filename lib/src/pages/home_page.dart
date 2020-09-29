import 'package:app_ejercicio/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

import 'package:app_ejercicio/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(context),
    );
  }

  Widget _lista(context) {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((element) {
      final widgetTemporal = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          Navigator.pushNamed(context, element['ruta']);

          //final route = MaterialPageRoute(builder: (context) {
          //  return AlertPage();
          //});
          //Navigator.push(context, route);
        },
      );
      opciones..add(widgetTemporal)..add(Divider());
    });

    return opciones;
  }
}
