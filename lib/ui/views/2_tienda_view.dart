import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_la_soberana/ui/shared/custom_footer.dart';

class TiendaView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final margen = MediaQuery.of(context).size.width * 0.03;

    return SingleChildScrollView(
      child: Column(
        children: [
          // SizedBox(height: size.height * 0.1),
          // SogaDivider(size: size),
          // SizedBox(height: size.height * 0.1),
          SizedBox(height: margen / 2),

          Container(
            width: double.infinity,
            height: size.height * 0.2,
            margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            // child: Expanded(
            //   // height: ai
            //   child: FittedBox(
            //       child: AutoSizeText("Nuestra tienda",
            //           style: GoogleFonts.satisfy(color: Colors.blue))),
            // ),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: size.height * 0.6,
                  // color: Colors.transparent,
                  child: Image.network(
                    // "https://thumbs.dreamstime.com/b/fondo-de-los-granos-y-de-las-semillas-44691113.jpg",
                    "https://envato-shoebox-0.imgix.net/71c8/e6f7-64b2-4710-b8aa-c0a353659108/5238.jpg?auto=compress%2Cformat&fit=max&mark=https%3A%2F%2Felements-assets.envato.com%2Fstatic%2Fwatermark2.png&markalign=center%2Cmiddle&markalpha=18&w=700&s=0fd43d4ae6e8dcdb190f65d212c6e11d",
                    fit: BoxFit.cover,
                  ),
                ),
                // Container(
                //   width: double.infinity,
                //   height: size.height * 0.2,
                //   color: Colors.black.withOpacity(0.6),
                // ),
                Center(
                  child: Container(
                    width: size.width * 0.6,
                    height: size.height * 0.2,
                    child: FittedBox(
                      child: AutoSizeText(
                        "Nuestra tienda",
                        style: GoogleFonts.satisfy(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: margen),

          Row(
            children: [
              SizedBox(width: margen),
              _ElementoF3Triple(margen: margen, size: size),
              SizedBox(width: margen),
              _ElementoF3Triple(margen: margen, size: size),
              SizedBox(width: margen),
              _ElementoF3Triple(margen: margen, size: size),
              SizedBox(width: margen),
            ],
          ),
          SizedBox(height: size.height * 0.02),
          SogaDivider(size: size),
          SizedBox(height: size.height * 0.1),
          Row(
            children: [
              SizedBox(width: margen),
              _ElementoF3Triple(margen: margen, size: size),
              SizedBox(width: margen),
              _ElementoF3Triple(margen: margen, size: size),
              SizedBox(width: margen),
              _ElementoF3Triple(margen: margen, size: size),
              SizedBox(width: margen),
            ],
          ),
          SizedBox(height: size.height * 0.02),
          SogaDivider(size: size),
          SizedBox(height: size.height * 0.1),
          Row(
            children: [
              SizedBox(width: margen),
              _ElementoF3Triple(margen: margen, size: size),
              SizedBox(width: margen),
              _ElementoF3Triple(margen: margen, size: size),
              SizedBox(width: margen),
              _ElementoF3Triple(margen: margen, size: size),
              SizedBox(width: margen),
            ],
          ),
          SizedBox(height: size.height * 0.02),
          SogaDivider(size: size),
          SizedBox(height: size.height * 0.1),
          Row(
            children: [
              SizedBox(width: margen),
              _ElementoF3Triple(margen: margen, size: size),
              SizedBox(width: margen),
              _ElementoF3Triple(margen: margen, size: size),
              SizedBox(width: margen),
              _ElementoF3Triple(margen: margen, size: size),
              SizedBox(width: margen),
            ],
          ),
          SizedBox(height: size.height * 0.02),
          Footer(),
        ],
      ),
    );
  }
}

class SogaDivider extends StatelessWidget {
  const SogaDivider({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      // width: double.infinity,
      height: size.height * 0.02,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Image(
            image: NetworkImage(
                "https://www.soberana.com.co/wp-content/themes/lasoberana/images/cuerda.png"),
          ),
          Image(
            image: NetworkImage(
                "https://www.soberana.com.co/wp-content/themes/lasoberana/images/cuerda.png"),
          ),
          Image(
            image: NetworkImage(
                "https://www.soberana.com.co/wp-content/themes/lasoberana/images/cuerda.png"),
          ),
          Image(
            image: NetworkImage(
                "https://www.soberana.com.co/wp-content/themes/lasoberana/images/cuerda.png"),
          ),
        ],
      ),
    );
  }
}

class _ElementoF3Triple extends StatelessWidget {
  const _ElementoF3Triple({
    Key? key,
    required this.margen,
    required this.size,
  }) : super(key: key);

  final double margen;
  final Size size;
  final String pathImage =
      "https://www.soberana.com.co/wp-content/uploads/2021/01/DestacadoHome1-1.jpg";
  final String descripcionProducto =
      "Oferta pague 3 lleve 4 en especialidades atún la soberana";
  final String precioProducto = "\$15";

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Image(
            image: NetworkImage(
              pathImage,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(vertical: margen / 2, horizontal: margen),
            child: Column(
              children: [
                AutoSizeText(
                  descripcionProducto,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
                AutoSizeText(
                  precioProducto,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: margen),
                TextButton(
                  onPressed: () {},
                  child: Text("AÑADIR AL CARRITO"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
