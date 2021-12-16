import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  TextStyle tamanioTextoFooter = TextStyle(
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
