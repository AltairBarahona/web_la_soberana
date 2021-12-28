import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_la_soberana/ui/shared/custom_footer.dart';

class ContactoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                          AutoSizeText("¡CONTÁCTANOS!",
                              style: GoogleFonts.satisfy(color: Colors.white)),
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
              '''
              Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed venenatis aliquam quam vitae accumsan. Nulla dapibus ipsum in lectus feugiat pulvinar. Donec id felis porttitor, commodo libero et, efficitur orci. Curabitur pellentesque quam justo, tristique mattis arcu mollis at. Aliquam nec ornare mauris, sit amet venenatis neque. Etiam sit amet lorem justo. Sed non aliquet risus.


               ''',
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
