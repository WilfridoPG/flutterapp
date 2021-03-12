import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ["uno", "dos", "tres", "cuatro", "cinco", "seis", "siete"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("compponent text"),
        ),
        body: ListView(children: _createItemsCorta()));
  }

  List<Widget> _createItemsCorta() {
    return opciones.map((e) {
      return Column(
        children: [
          ListTile(
            title: Text("Numero " + e),
            subtitle: Text("Nombre "),
            leading: Icon(Icons.access_alarm),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
