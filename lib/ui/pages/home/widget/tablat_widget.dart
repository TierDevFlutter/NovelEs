import 'package:flutter/material.dart';

class TablaWidget extends StatelessWidget {
  const TablaWidget({super.key, required this.datos});

  final List<Map<String, dynamic>> datos;

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: datos.isNotEmpty
          ? datos[0].keys.map((key) => DataColumn(label: Text(key))).toList()
          : [],
      rows: datos.map((fila) {
        return DataRow(
          cells: fila.keys
              .map(
                (key) => DataCell(Text('${fila[key]}')),
              )
              .toList(),
        );
      }).toList(),
    );
  }
}
