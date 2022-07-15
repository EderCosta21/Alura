import 'package:flutter/material.dart';

class Editor extends StatefulWidget {
  final TextEditingController controlador;
  final String labelConta;
  final String labelHelper;
  final IconData icone;

  const Editor({
    Key? key,
    required this.controlador,
    required this.labelConta,
    required this.labelHelper,
    required this.icone,
  }) : super(key: key);

  @override
  State<Editor> createState() => _EditorState();
}

class _EditorState extends State<Editor> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: widget.controlador,
        style: TextStyle(
          color: Colors.black87,
          fontSize: 16,
        ),
        decoration: InputDecoration(
          icon: Icon(widget.icone),
          labelText: widget.labelConta,
          hintText: widget.labelHelper,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
