// ignore_for_file: unnecessary_null_comparison

import 'package:bank/pages/home/widgets/itemTransferencia.dart';
import 'package:bank/pages/novaTransferencia/widget/editor.dart';
import 'package:flutter/material.dart';

class NewTransfer extends StatefulWidget {
  const NewTransfer({Key? key}) : super(key: key);

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Editor(
                  controlador: _contaEC,
                  labelConta: 'Conta',
                  labelHelper: '00000',
                  icone: Icons.account_box),
              Editor(
                  controlador: _valorEC,
                  labelConta: 'Valor',
                  labelHelper: '00.00',
                  icone: Icons.monetization_on),
              ElevatedButton(
                  onPressed: () => _criarTransferencia(context),
                  child: Text(
                    'Salvar',
                  ))
            ],
          ),
        ),
      ),
    );
  }

  void _criarTransferencia(BuildContext context) {
    final int numero = int.parse(_contaEC.text);
    final double value = double.parse(_valorEC.text);

    if (numero != null && value != null) {
      final tranfer = Transferencia(numero, value);
      debugPrint('criando a transferencia');
      debugPrint('$tranfer');
      Navigator.pop(context, tranfer);
    }
  }
}
