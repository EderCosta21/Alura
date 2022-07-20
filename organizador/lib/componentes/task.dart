import 'package:flutter/material.dart';

import 'dificulty.dart';

class Taks extends StatefulWidget {
  final String nome;
  final String foto;
  final int level;

  const Taks(
      {required this.nome, required this.foto, required this.level, Key? key})
      : super(key: key);

  @override
  State<Taks> createState() => TaksState();
}

class TaksState extends State<Taks> {
  int nivel = 0;

  bool assetOrNetWork() {
    if (widget.foto.contains('http')) return false;
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
            ),
            height: 140,
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black26,
                      ),
                      width: 72,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: assetOrNetWork()
                            ? Image.asset(
                                widget.foto,
                                fit: BoxFit.cover,
                              )
                            : Image.network(
                                widget.foto,
                                fit: BoxFit.cover,
                              ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text(
                            widget.nome,
                            style: const TextStyle(
                                fontSize: 24, overflow: TextOverflow.ellipsis),
                          ),
                        ),
                        Difficulty(levelDifficulty: widget.level),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            nivel++;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Icon(Icons.arrow_drop_up),
                            Text(
                              'UP',
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 300,
                      child: LinearProgressIndicator(
                          color: Colors.white,
                          value: (widget.level > 0)
                              ? (nivel / widget.level) / 10
                              : 1),
                    ),
                    Text(
                      'Nivel $nivel',
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
