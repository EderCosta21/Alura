import 'package:flutter/material.dart';

class MyFirstDisplay extends StatelessWidget {
  const MyFirstDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(color: Colors.red, width: 100, height: 100),
                Container(color: Colors.blue, width: 50, height: 50),
              ],
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                    color: const Color.fromARGB(255, 105, 95, 0),
                    width: 100,
                    height: 100),
                Container(color: Colors.green, width: 50, height: 50),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(color: Colors.cyan, height: 50, width: 50),
                Container(color: Colors.pinkAccent, height: 50, width: 50),
                Container(color: Colors.amber, height: 50, width: 50),
              ],
            ),
            Container(
              color: Colors.deepPurple,
              height: 30,
              width: 300,
              child: const Text(
                'Carro Amarelo',
                style: TextStyle(color: Colors.black, fontSize: 28),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Click aqui'),
            )
          ],
        ),
      ),
    );
  }
}
