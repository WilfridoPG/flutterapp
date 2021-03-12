import 'package:flutter/material.dart';
import 'package:wigeflutter/src/pages/alert_page.dart';

import 'package:wigeflutter/src/providers/menu_provider.dart';
import 'package:wigeflutter/src/utils/icon_string_utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Component"),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snaphot) {
        print(snaphot.data);

        return ListView(
          children: _listaItems(snaphot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt["texto"]),
        leading: getIcon(opt["icon"]),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.pushNamed(context, opt["ruta"]);
          /*
          final route = MaterialPageRoute(builder: (context) => AlertPages());

          Navigator.push(context, route);*/
        },
      );
      opciones..add(widgetTemp)..add(Divider());
    });

    return opciones;
  }
}
