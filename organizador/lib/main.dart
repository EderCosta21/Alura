import 'package:flutter/material.dart';
import 'package:organizador_tarefas/data/task_inherited.dart';
import 'package:organizador_tarefas/screens/form_screen.dart';
import 'package:organizador_tarefas/screens/initialScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        '/new': (context) => const FormScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TaskInherited(
        child: const InitialScreen(),
      ),
    );
  }
}
