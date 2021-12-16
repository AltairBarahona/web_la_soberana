import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:web_la_soberana/ui/shared/custom_footer.dart';

class ContactoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final margen = MediaQuery.of(context).size.width * 0.03;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            // color: Colors.red,
            height: size.height * 0.35,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://img.freepik.com/foto-gratis/alimentos-enlatados-huevos-pasta-aislado-sobre-fondo-azul-copyscape_145193-1583.jpg?size=626&ext=jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Row(
                  children: [
                    Container(
                      // color: Colors.red.withOpacity(0.2),
                      width: size.width * 0.2,
                    ),
                    Expanded(
                      // height: ai
                      child: FittedBox(
                          child: Row(
                        children: [
                          AutoSizeText(
                            "¡CONTÁCTANOS!",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )),
                    ),
                  ],
                ) // Row(),
              ],
            ),
          ),
          SizedBox(height: size.height * 0.05),
          Container(
            height: size.height * 0.18,
            width: size.width * 0.8,
            // color: Colors.red,
            child: AutoSizeText(
              "Si deseas conocer más a cerca de La Soberana y sus productos, déjanos tu información en el siguiente formulario, además si tienes alguna pregunta o solicitud especifica no olvides escribirla para que nuestra comunicación sea mucho más efectiva. ¡Gracias por contactarte con nosotros!",
              style: TextStyle(fontSize: 80),
              textAlign: TextAlign.justify,
              // style: TextStyle(fontSize: ),
            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}
