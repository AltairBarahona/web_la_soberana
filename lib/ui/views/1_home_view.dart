import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_indicators.dart';
import 'package:flutter_carousel_widget/flutter_carousel_options.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_la_soberana/ui/shared/custom_footer.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final margen = MediaQuery.of(context).size.width * 0.03;
    Size size = MediaQuery.of(context).size;

    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              // color: Colors.red,
              margin: EdgeInsets.all(margen),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Image.network(
                    item,
                    width: size.width * 0.8,
                    fit: BoxFit.cover,
                  )),
            ))
        .toList();

    return SingleChildScrollView(
      child: Column(
        children: [
          // SizedBox(height: margen / 2),
          Container(
            width: double.infinity,
            height: size.height * 0.3,
            margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            // child: Expanded(
            //   // height: ai
            //   child: FittedBox(
            //       child: AutoSizeText("Nuestra tienda",
            //           style: GoogleFonts.satisfy(color: Colors.blue))),
            // ),
            child: FittedBox(
              child: AutoSizeText("La Soberana",
                  style: GoogleFonts.satisfy(color: Colors.blue)),
            ),
          ),
          Container(
            // color: Colors.white70,
            // height: size.height * 0.4,
            child: FlutterCarousel(
              options: CarouselOptions(
                autoPlayCurve: Curves.easeInOut,
                // autoPlayCurve: Curves.elasticInOut,
                autoPlay: true,
                autoPlayAnimationDuration: Duration(seconds: 2),
                // autoPlayInterval: Duration(seconds: 5),
                aspectRatio: 2.0,
                // height: size.height * 0.8,
                showIndicator: true,
                slideIndicator: CircularSlideIndicator(),
              ),
              items: imageSliders,
            ),
          ),
          // FlutterCarousel.builder(
          //   options: CarouselOptions(
          //     aspectRatio: 2.0,
          //     enlargeCenterPage: false,
          //     viewportFraction: 1,
          //     showIndicator: true,
          //     autoPlay: true,
          //     slideIndicator: CircularStaticIndicator(),
          //   ),
          //   itemCount: (imgList.length / 2).round(),
          //   itemBuilder: (context, index, realIdx) {
          //     final int first = index * 2;
          //     final int second = first + 1;
          //     return Row(
          //       children: [first, second].map((idx) {
          //         return Expanded(
          //           flex: 1,
          //           child: Container(
          //             margin: const EdgeInsets.symmetric(horizontal: 10),
          //             child: Image.network(
          //               imgList[idx],
          //               fit: BoxFit.cover,
          //               width: double.infinity,
          //             ),
          //           ),
          //         );
          //       }).toList(),
          //     );
          //   },
          // ),
          SizedBox(height: margen / 2),
          Row(
            children: [
              SizedBox(width: margen),
              _ElemenoF1Doble(margen: margen, size: size),
              SizedBox(width: margen),
              _ElemenoF1Doble(margen: margen, size: size),
              SizedBox(width: margen),
            ],
          ),
          SizedBox(width: double.infinity, height: margen),
          Row(
            children: [
              SizedBox(width: margen),
              _ElementoF2Triple(margen: margen, size: size),
              SizedBox(width: margen),
              _ElementoF2Triple(margen: margen, size: size),
              SizedBox(width: margen),
              _ElementoF2Triple(margen: margen, size: size),
              SizedBox(width: margen),
            ],
          ),
          SizedBox(width: double.infinity, height: margen),
          Container(
            width: double.infinity,
            color: Colors.red,
            height: size.height * 0.4,
            // color: Colors.blueAccent,
            child: Image(
              image: NetworkImage(
                "https://www.soberana.com.co/wp-content/uploads/2021/01/BannerAtunes.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: double.infinity, height: margen),
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
          SizedBox(width: double.infinity, height: margen),
          Footer(),
        ],
      ),
    );
  }
}

final List<String> imgList = [
  'https://www.soberana.com.co/wp-content/uploads/2021/01/DestacadoHome3.jpg',
  'https://www.soberana.com.co/wp-content/uploads/2020/12/destacado-4.jpg',
  'https://www.soberana.com.co/wp-content/uploads/2020/12/destacado-3.jpg',
  'https://www.soberana.com.co/wp-content/uploads/2021/01/DestacadoHome2.jpg',
];

class _ElementoF2Triple extends StatelessWidget {
  const _ElementoF2Triple({
    Key? key,
    required this.margen,
    required this.size,
  }) : super(key: key);

  final double margen;
  final Size size;
  final String pathImage =
      "https://www.soberana.com.co/wp-content/uploads/2021/01/DestacadoHome1-1.jpg";

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
        // height: size.height * 0.26,
        // color: Colors.red,
        child: Image(image: NetworkImage(pathImage)),
      ),
    );
  }
}

class _ElemenoF1Doble extends StatelessWidget {
  const _ElemenoF1Doble({
    Key? key,
    required this.margen,
    required this.size,
  }) : super(key: key);

  final double margen;
  final Size size;
  final String pathImage =
      "https://www.soberana.com.co/wp-content/uploads/2021/01/DestacadoHome1-1.jpg";

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // margin: EdgeInsets.fromLTRB(0, margen, 0, 0),
        // height: size.height * 0.4,
        // color: Colors.red,
        child: Image(
          image: NetworkImage(pathImage),
          fit: BoxFit.cover,
        ),
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
          Column(
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
        ],
      ),
    );
  }
}

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      item,
                      fit: BoxFit.cover,
                      // width: 1000.0,
                    ),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'No. ${imgList.indexOf(item)} image',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();
