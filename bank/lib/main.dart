import 'package:bank/pages/home/widgets/listaTransferencia.dart';
import 'package:bank/pages/novaTransferencia/newTransfer.dart';
import 'package:flutter/material.dart';

import 'core/ui/app_config_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: AppConfigUI.theme,
      home: const MyHomePage(title: 'Transferencias'),
      initialRoute: '/',
      routes: {
        'new': (_) => NewTransfer(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListaTransferencia(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
