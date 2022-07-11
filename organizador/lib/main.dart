import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Tarefas',
            textAlign: TextAlign.center,
          ),
        ),
        body: ListView(
          children: const [
            _Taks('Aprender flutter'),
            _Taks('Andar de bike'),
            _Taks('Meditar'),
            _Taks('Jogar futebol'),
            _Taks('Jogar futebol 2'),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, child: const Icon(Icons.add)),
      ),
    );
  }
}

class _Taks extends StatefulWidget {
  final String nome;
  const _Taks(this.nome, {Key? key});

  @override
  State<_Taks> createState() => _TaksState();
}

class _TaksState extends State<_Taks> {
  int nivel = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Stack(
        children: [
          Container(
            color: Colors.blue,
            height: 140,
          ),
          Column(
            children: [
              Container(
                color: Colors.white,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.black26,
                      width: 72,
                      height: 100,
                    ),
                    SizedBox(
                      width: 200,
                      child: Text(
                        widget.nome,
                        style: const TextStyle(
                            fontSize: 24, overflow: TextOverflow.ellipsis),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          nivel++;
                        });

                        print(nivel);
                      },
                      child: const Icon(Icons.arrow_drop_up),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 300,
                    child: LinearProgressIndicator(
                      color: Colors.white,
                      value: nivel / 10,
                    ),
                  ),
                  Text(
                    'Nivel $nivel',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
