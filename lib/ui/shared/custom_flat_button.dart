import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFlatuButton extends StatefulWidget {
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
    this.color = Colors.red,
  }) : super(key: key);

  @override
  _CustomFlatuButtonState createState() => _CustomFlatuButtonState();
}

class _CustomFlatuButtonState extends State<CustomFlatuButton> {
  // bool isHover = false;
  // TextStyle estiloTexto =
  //     new TextStyle(fontSize: 20, fontWeight: FontWeight.w500);
  // TextStyle estiloTextoMedio =
  //     new TextStyle(fontSize: 14, fontWeight: FontWeight.w500);

  TextStyle estiloTexto =
      GoogleFonts.satisfy(color: Colors.black, fontSize: 25);
  TextStyle estiloTextoMedio = GoogleFonts.satisfy(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MouseRegion(
      // onEnter: (_) {
      //   setState(() {
      //     isHover = true;
      //   });
      // },
      // onExit: (_) {
      //   setState(() {
      //     isHover = false;
      //   });
      // },
      cursor: SystemMouseCursors.click,
      child: TextButton(
        style: TextButton.styleFrom(primary: widget.color),
        onPressed: () {
          this.widget.onPressed();
        },
        child: size.width > 600
            ? Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(this.widget.text,
                    style:
                        GoogleFonts.satisfy(color: widget.color, fontSize: 30)),
              )
            : Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(this.widget.text,
                    style: GoogleFonts.satisfy(
                        color: widget.color, fontSize: 25))),
      ),
    );
  }
}
