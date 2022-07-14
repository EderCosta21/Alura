import 'package:flutter/material.dart';

import 'itemTransferencia.dart';

class ListaTransferencia extends StatelessWidget {
  const ListaTransferencia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ItemTransferencia(Transferencia(37503, 100.10)),
          ItemTransferencia(Transferencia(37503, 100.10)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('new');
        },
        tooltip: 'new transferencia',
        child: const Icon(Icons.add),
      ),
    );
  }
}
