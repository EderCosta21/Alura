// ignore_for_file: unnecessary_null_comparison

import 'package:bank/pages/home/widgets/itemTransferencia.dart';
import 'package:flutter/material.dart';

class NewTransfer extends StatefulWidget {
  NewTransfer({Key? key}) : super(key: key);

  @override
  State<NewTransfer> createState() => _NewTransferState();
}

class _NewTransferState extends State<NewTransfer> {
  final TextEditingController _valorEC = TextEditingController();
  final TextEditingController _contaEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nova transferencia'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Column(
          children: [
            TextField(
              controller: _contaEC,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 16,
              ),
              decoration: InputDecoration(
                icon: Icon(Icons.account_box),
                labelText: 'Conta',
                hintText: '00000',
              ),
              keyboardType: TextInputType.number,
              maxLength: 6,
            ),
            TextField(
              controller: _valorEC,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 16,
              ),
              decoration: InputDecoration(
                icon: Icon(Icons.monetization_on),
                labelText: 'Valor',
                hintText: '00.00',
              ),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
                onPressed: () {
                  final int numero = int.parse(_contaEC.text);
                  final double value = double.parse(_valorEC.text);

                  if (numero != null && value != null) {
                    final tranfer = Transferencia(numero, value);
                    print('$tranfer');
                  }
                },
                child: Text(
                  'Salvar',
                ))
          ],
        ),
      ),
    );
  }
}
