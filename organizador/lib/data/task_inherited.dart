// ignore_for_file: overridden_fields

import 'package:flutter/material.dart';

import '../componentes/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({Key? key, required this.child})
      : super(key: key, child: child);

  @override
  final Widget child;

  final List<Taks> taskList = [
    Taks(
      nome: 'Aprender flutter',
      foto: 'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
      level: 3,
    ),
    Taks(
      nome: 'Andar de bike',
      foto:
          'https://tswbike.com/wp-content/uploads/2020/09/108034687_626160478000800_2490880540739582681_n-e1600200953343.jpg',
      level: 2,
    ),
    Taks(
      nome: 'Meditar',
      foto:
          'https://manhattanmentalhealthcounseling.com/wp-content/uploads/2019/06/Top-5-Scientific-Findings-on-MeditationMindfulness-881x710.jpeg',
      level: 5,
    ),
    Taks(
      nome: 'Ler um livro',
      foto:
          'https://thebogotapost.com/wp-content/uploads/2017/06/636052464065850579-137719760_flyer-image-1.jpg',
      level: 0,
    ),
    Taks(
      nome: 'Jogar futebol 2',
      foto:
          'https://www.cbs17.com/wp-content/uploads/sites/29/2022/02/1040x585-2022-0110-best-size-5-soccer-ball-5a0ad2.jpg?w=876&h=493&crop=1',
      level: 1,
    ),
  ];

  void newTask(String name, String photo, int level) {
    taskList.add(Taks(nome: name, foto: photo, level: level));
  }

  static TaskInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TaskInherited>();
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
