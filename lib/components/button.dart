import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  //const Button({Key? key}) : super(key: key);
  static const DARK = Color.fromARGB(255, 150, 148, 148);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(64, 224, 208, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  Button({
    required this.text,
    this.big = false,
    this.color = DEFAULT,
    required this.cb,
  });

  Button.big({
    required this.text,
    this.big = true,
    this.color = DEFAULT,
    required this.cb,
  });

  Button.operation({
    required this.text,
    this.big = false,
    this.color = OPERATION,
    required this.cb,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: big ? 2 : 1,
        child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(this.color),
            ),
            onPressed: () => cb(text),
            child: Text(
              text,
              style: TextStyle(
                //backgroundColor: this.color,
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w200,
              ),
            )));
  }
}
