import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  TextStyle tamanioTextoFooterDesktop = TextStyle(
    // fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  TextStyle tamanioTextoFooterMobile = TextStyle(
    fontSize: 12,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return size.width > 860
        ? FooterDesktop(
            size: size, tamanioTextoFooter: tamanioTextoFooterDesktop)
        : FooterMobile(
            size: size, tamanioTextoFooter: tamanioTextoFooterMobile);
  }
}

class FooterMobile extends StatelessWidget {
  const FooterMobile({
    Key? key,
    required this.size,
    required this.tamanioTextoFooter,
  }) : super(key: key);

  final Size size;
  final TextStyle tamanioTextoFooter;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // color: Colors.blue[900],
      color: Colors.red,

      child: Column(
        children: [
          SizedBox(height: size.height * 0.04),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "CORPORATIVO",
                      style: TextStyle(fontSize: size.width * 0.02),
                    ),
                    Text("LA SOBERANA", style: tamanioTextoFooter),
                    Text("RECETAS", style: tamanioTextoFooter),
                    Text("CONTACTO", style: tamanioTextoFooter),
                    Text("TRABAJA CON NOSOTROS", style: tamanioTextoFooter),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: size.width * 0.11),
                child: Column(
                  children: [
                    Text("MANTENTE INFORMADO", style: tamanioTextoFooter),
                    Text("CÓDIGO DE ÉTICA SOBERANA S.A.S",
                        style: tamanioTextoFooter),
                    Text("AVISO DE PRIVACIDAD", style: tamanioTextoFooter),
                    Text("", style: tamanioTextoFooter),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text("SOBERANA S.A.S.", style: tamanioTextoFooter),
                    Text("Cra. 57 No. 74  80 Itagüí Antioquia, Colombia",
                        style: tamanioTextoFooter),
                    Text("Sector Ciudadela del Valle",
                        style: tamanioTextoFooter),
                    Text("info@soberana.com.co", style: tamanioTextoFooter),
                    Text("+(574) 444 3918", style: tamanioTextoFooter),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: size.height * 0.2),
        ],
      ),
    );
  }
}

class FooterDesktop extends StatelessWidget {
  const FooterDesktop({
    Key? key,
    required this.size,
    required this.tamanioTextoFooter,
  }) : super(key: key);

  final Size size;
  final TextStyle tamanioTextoFooter;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue[900],
      child: Column(
        children: [
          SizedBox(height: size.height * 0.04),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("CORPORATIVO", style: tamanioTextoFooter),
                    Text("LA SOBERANA", style: tamanioTextoFooter),
                    Text("RECETAS", style: tamanioTextoFooter),
                    Text("CONTACTO", style: tamanioTextoFooter),
                    Text("TRABAJA CON NOSOTROS", style: tamanioTextoFooter),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: size.width * 0.11),
                child: Column(
                  children: [
                    Text("MANTENTE INFORMADO", style: tamanioTextoFooter),
                    Text("CÓDIGO DE ÉTICA SOBERANA S.A.S",
                        style: tamanioTextoFooter),
                    Text("AVISO DE PRIVACIDAD", style: tamanioTextoFooter),
                    Text("", style: tamanioTextoFooter),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text("SOBERANA S.A.S.", style: tamanioTextoFooter),
                    Text("Cra. 57 No. 74  80 Itagüí Antioquia, Colombia",
                        style: tamanioTextoFooter),
                    Text("Sector Ciudadela del Valle",
                        style: tamanioTextoFooter),
                    Text("info@soberana.com.co", style: tamanioTextoFooter),
                    Text("+(574) 444 3918", style: tamanioTextoFooter),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: size.height * 0.2),
        ],
      ),
    );
  }
}
