// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:organizador_tarefas/data/task_inherited.dart';
import 'package:organizador_tarefas/screens/form_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Container(),
        title: const Text(
          'Tarefas',
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contextNew) => FormScreen(
                                taskContext: context,
                              )));
                },
                child: Icon(
                  Icons.add,
                  size: 26.0,
                ),
              )),
        ],
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 1000),
        child: ListView(
          children: TaskInherited.of(context)!.taskList,
          padding: EdgeInsets.only(top: 8.0, bottom: 75.0),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: Icon(opacidade ? Icons.visibility : Icons.visibility_off),
      ),
    );
  }
}
