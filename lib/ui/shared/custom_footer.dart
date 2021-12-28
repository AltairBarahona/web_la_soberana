import 'package:flutter/material.dart';

const TextStyle tamanioTextoFooterDesktop = TextStyle(
  // fontSize: 20,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return size.width > 421
        ? FooterDesktop(size: size)
        : FooterMobile(size: size);
  }
}

class FooterDesktop extends StatelessWidget {
  const FooterDesktop({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue[900],
      child: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            width: double.infinity,
            child: Image.network(
              "https://plustatic.com/4059/conversions/diferencias-mar-oceano-default.jpg",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: size.height * 0.45,
            width: double.infinity,
            color: Colors.black.withOpacity(0.5),
          ),
          Column(
            children: [
              SizedBox(height: size.height * 0.08),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: size.width * 0.25,
                    // color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextoCentrado(texto: "CORPORATIVO"),
                        TextoCentrado(texto: "LA SOBERANA"),
                        TextoCentrado(texto: "RECETAS"),
                        TextoCentrado(texto: "CONTACTO"),
                        TextoCentrado(texto: "TRABAJA CON NOSOTROS"),
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 0.25,
                    // color: Colors.red,
                    child: Column(
                      children: [
                        TextoCentrado(texto: "SOBERANA S.A.S."),
                        TextoCentrado(texto: "MANTENTE INFORMADO"),
                        TextoCentrado(texto: "AVISO DE PRIVACIDAD"),
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 0.25,
                    // color: Colors.red,
                    child: Column(
                      children: [
                        TextoCentrado(texto: "Cra. 57 No. 74"),
                        TextoCentrado(texto: "80 Itagüí Antioquia, Colombia"),
                        TextoCentrado(texto: "Sector Ciudadela del Valle"),
                        TextoCentrado(texto: "info@soberana.com.co"),
                        TextoCentrado(texto: "+(574) 444 3918"),
                      ],
                    ),
                  )
                ],
              ),
              // SizedBox(height: size.height * 0.1),
            ],
          ),
        ],
      ),
    );
  }
}

class FooterMobile extends StatelessWidget {
  const FooterMobile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    double containerSize = size.width * 0.8;
    return Container(
      width: double.infinity,

      color: Colors.blue[900],
      // color: Colors.purpleAccent,

      child: Stack(
        children: [
          Container(
            height: size.height * 0.8,
            width: double.infinity,
            child: Image.network(
              "https://plustatic.com/4059/conversions/diferencias-mar-oceano-default.jpg",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: size.height * 0.8,
            width: double.infinity,
            color: Colors.black.withOpacity(0.5),
          ),
          Center(
            child: Column(
              children: [
                SizedBox(height: size.height * 0.04),
                Container(
                  width: containerSize,
                  // color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextoCentrado(texto: "CORPORATIVO"),
                      TextoCentrado(texto: "LA SOBERANA"),
                      TextoCentrado(texto: "RECETAS"),
                      TextoCentrado(texto: "CONTACTO"),
                      TextoCentrado(texto: "TRABAJA CON NOSOTROS"),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.04),
                Container(
                  width: containerSize,
                  // color: Colors.red,
                  child: Column(
                    children: [
                      TextoCentrado(texto: "SOBERANA S.A.S."),
                      TextoCentrado(texto: "MANTENTE INFORMADO"),
                      TextoCentrado(texto: "AVISO DE PRIVACIDAD"),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.04),
                Container(
                  width: containerSize,
                  // color: Colors.red,
                  child: Column(
                    children: [
                      TextoCentrado(texto: "Cra. 57 No. 74"),
                      TextoCentrado(texto: "80 Itagüí Antioquia, Colombia"),
                      TextoCentrado(texto: "Sector Ciudadela del Valle"),
                      TextoCentrado(texto: "info@soberana.com.co"),
                      TextoCentrado(texto: "+(574) 444 3918"),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.2),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TextoCentrado extends StatelessWidget {
  final String texto;
  const TextoCentrado({
    Key? key,
    this.tamanioTextoFooter = tamanioTextoFooterDesktop,
    required this.texto,
  }) : super(key: key);

  final TextStyle tamanioTextoFooter;

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: tamanioTextoFooter,
      textAlign: TextAlign.center,
    );
  }
}
