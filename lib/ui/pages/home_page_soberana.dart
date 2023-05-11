// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

final List<String> imgList = [
  "assets/img/arverjaRosada.jpeg",
  "assets/img/arverjaVerde.jpeg",
  "assets/img/avena.jpeg",
  "assets/img/azucar.jpeg",
  "assets/img/canguil.jpeg",
  "assets/img/frejolCanario.jpeg",
  "assets/img/frejolNegro.jpeg",
  "assets/img/frejolRojo.jpeg",
  "assets/img/garbanzo.jpeg",
  "assets/img/lenteja.jpeg",
  "assets/img/maicena.jpeg",
  "assets/img/panelaMolida.jpeg",
  "assets/img/panelaRedonda.jpeg",
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(item, fit: BoxFit.cover, width: 1000.0),
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

class HomePageSoberana extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final margen = MediaQuery.of(context).size.width * 0.03;

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: CarouselSlider(
                items: imageSliders,
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.5,
                  enlargeCenterPage: true,
                )),
          ),
          Container(
            // width: double.infinity,
            // height: size.height * 0.7,
            // color: Colors.blueAccent,
            child: Image(
                image: AssetImage(
                    "https://www.soberana.com.co/wp-content/uploads/2021/01/BannerAtunes.jpg")),
          ),
          SizedBox(height: margen),
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
            height: size.height * 0.2,
            color: Colors.pink,
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
        ],
      ),
    ));
  }
}

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
        child: Image(image: NetworkImage(pathImage)),
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
      "Oferta pague 3 lleve 4 en especialidades atún Soberana";
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
