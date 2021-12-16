import 'package:flutter/material.dart';

class CustomFlatuButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPressed;

  const CustomFlatuButton({
    Key? key,
    //required es porque habilitamos sound null safety
    //así hacemos que sea requerido este parámetro
    required this.text,
    required this.onPressed,
    //Este es opcional pero se inicializa con pink
    this.color = Colors.pink,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(primary: color),
      onPressed: () {
        // setState(() {
        //   _counter++;
        // });
        //los paréntesis finales hacen que se ejecuta realmente la función
        this.onPressed();
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(this.text),
      ),
    );
  }
}
