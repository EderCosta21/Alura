// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:organizador_tarefas/componentes/task.dart';

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
                  Navigator.of(context).pushNamed('/new');
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
          children: const [
            Taks(
                nome: 'Aprender flutter',
                foto:
                    'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                level: 3),
            Taks(
                nome: 'Andar de bike',
                foto:
                    'https://tswbike.com/wp-content/uploads/2020/09/108034687_626160478000800_2490880540739582681_n-e1600200953343.jpg',
                level: 2),
            Taks(
                nome: 'Meditar',
                foto:
                    'https://manhattanmentalhealthcounseling.com/wp-content/uploads/2019/06/Top-5-Scientific-Findings-on-MeditationMindfulness-881x710.jpeg',
                level: 5),
            Taks(
                nome: 'Ler um livro',
                foto:
                    'https://thebogotapost.com/wp-content/uploads/2017/06/636052464065850579-137719760_flyer-image-1.jpg',
                level: 0),
            Taks(
                nome: 'Jogar futebol 2',
                foto:
                    'https://www.cbs17.com/wp-content/uploads/sites/29/2022/02/1040x585-2022-0110-best-size-5-soccer-ball-5a0ad2.jpg?w=876&h=493&crop=1',
                level: 1),
            SizedBox(
              height: 20,
            )
          ],
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
