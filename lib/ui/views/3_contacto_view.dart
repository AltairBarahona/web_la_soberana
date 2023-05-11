import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        double titleSize = sizingInformation.isMobile ? 28 : 32;
        double textSize = sizingInformation.isMobile ? 20 : 25;

        return SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: size.width,
                height: size.width > 600 ? size.width * 0.2 : 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/products/banner1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Contáctanos',
                      style: GoogleFonts.courgette(
                        fontSize: titleSize,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[900],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Si estás interesado en adquirir nuestros productos o necesitas más información, no dudes en comunicarte con nosotros.',
                      style: GoogleFonts.cabin(
                        fontSize: textSize,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20),

                    //Correo electrónico a soberana@gmail.com
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Ventas y atención al cliente: ',
                            style: GoogleFonts.courgette(
                              fontSize: textSize,
                              color: Colors.green[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: '0997968429 | +593997968429',
                            style: GoogleFonts.cabin(
                              fontSize: textSize,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),

                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Correo electrónico: ',
                            style: GoogleFonts.courgette(
                              fontSize: textSize,
                              color: Colors.green[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'soberana@gmail.com',
                            style: GoogleFonts.cabin(
                              fontSize: textSize,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: textSize,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Ubicación: ',
                            style: GoogleFonts.courgette(
                              fontSize: textSize,
                              color: Colors.green[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'Av. Las Hiedras y Granados.',
                            style: GoogleFonts.cabin(
                              fontSize: textSize,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 40),
                    Text(
                      'En Soberana, nos dedicamos a traer a tu mesa los mejores productos nacionales e internacionales',
                      style: TextStyle(fontSize: textSize),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
