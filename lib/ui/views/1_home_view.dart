import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_la_soberana/ui/shared/custom_footer.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final margen = MediaQuery.of(context).size.width * 0.03;
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.all(16),
      child: ProductGrid(),
    );
  }
}

final List<String> imgList = [
  "assets/img/panelaRedonda.jpeg",
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
];

class Product {
  final String name;
  final String imagePath;
  final String description;

  Product(
      {required this.name, required this.imagePath, required this.description});
}

List<Product> productList = [
  Product(
      description:
          "Descubre el sabor suave y dulce de nuestras arvejas rosadas. Cosechadas con amor, llenarán tus platos de color y sabor. ¡Cocina momentos inolvidables y reconfortantes en casa con estas pequeñas joyas de la naturaleza!",
      name: 'Arverja Rosada',
      imagePath: 'assets/products/ARVERJA ROSADA.jpg'),
  Product(
      description:
          "¡Dale vida a tus platos con nuestras arvejas verdes! Recuerda los días de comidas familiares con su sabor fresco y vibrante. ¡Añade un toque de amor a tus preparaciones y disfruta de la esencia del hogar en cada bocado!",
      name: 'Arverja Verde',
      imagePath: 'assets/products/ARVERJA VERDE.jpg'),
  Product(
      description:
          "Comienza tus mañanas con el abrazo cálido de nuestra avena. Rica en nutrientes y con su sabor suave y reconfortante, te transportará a esos desayunos familiares llenos de amor y risas. ¡Prepárala con cariño y siente cómo llena tu día de energía y buenos recuerdos!",
      name: 'Avena',
      imagePath: 'assets/products/avena.jpeg'),
  Product(
      description:
          "Endulza tus días con nuestro azúcar de la más alta calidad. Agrega ese toque cálido y hogareño a tus bebidas y postres. ¡Cada grano es un grano de felicidad, listo para derretirse en tu taza de café o en tu receta favorita!",
      name: 'Azúcar',
      imagePath: 'assets/products/azucar1.jpg'),
  Product(
      description:
          "Nada como reuniones familiares con el aroma de nuestras palomitas de maíz recién hechas. Su crujiente textura y su sabor irresistible te llevarán de vuelta a las noches de películas en casa. ¡Prepáralas en minutos y disfruta de un momento de diversión y sabor!",
      name: 'Canguil',
      imagePath: 'assets/products/canguil.jpeg'),
  Product(
      description:
          "Nuestros fréjoles canarios son como un abrazo en un día frío. Con su textura cremosa y su sabor lleno de cariño, son el complemento perfecto para tus platos caseros. ¡Rememora las comidas en familia con cada cucharada!",
      name: 'Fréjol Canario',
      imagePath: 'assets/products/frejol Canario.jpg'),
  Product(
      description:
          "Nuestros fréjoles negros son el corazón de las comidas caseras. Con su sabor profundo y su textura suave, son el ingrediente estrella de tus recetas favoritas. ¡Cocínalos con amor y siente cómo cada bocado te transporta al calor del hogar!",
      name: 'Fréjol Negro',
      imagePath: 'assets/products/frejolNegro.jpeg'),
  Product(
      description:
          "Siente la nostalgia de las comidas caseras con nuestros fréjoles rojos. Su sabor profundo y su textura suave evocan recuerdos de comidas cocinadas lentamente en la cocina de la abuela. ¡Añádelos a tus recetas y siente el calor del hogar en cada bocado!",
      name: 'Fréjol Rojo',
      imagePath: 'assets/products/frejol rojo.jpg'),
  Product(
      description:
          "Disfruta la textura rica y el sabor nutritivo de nuestros garbanzos. Perfectos para guisos reconfortantes o hummus casero. ¡Cocina con amor y siente cómo tus platos se transforman en verdaderas delicias caseras!",
      name: 'Garbanzo',
      imagePath: 'assets/products/garbanzo.jpg'),
  Product(
      description:
          "Nuestras lentejas son un abrazo comestible en un plato. De sabor terroso y textura suave, son el ingrediente perfecto para tus guisos y sopas. ¡Deleita tu paladar y revive las tradiciones culinarias del hogar!",
      name: 'Lenteja',
      imagePath: 'assets/products/lenteja1.jpg'),
  Product(
      description:
          "Nuestra maicena es la magia blanca que transforma tus recetas. Ya sea para espesar tus salsas o para preparar deliciosos postres, siempre aporta ese toque hogareño. ¡Experimenta la sensación de la cocina casera en cada plato!",
      name: 'Maicena',
      imagePath: 'assets/products/maicena.jpg'),
  Product(
      description:
          "Descubre el dulzor genuino y cálido de nuestra panela molida. Con su sabor profundo y terroso, transformará tus bebidas y postres en auténticas joyas culinarias hogareñas. ¡Añade un toque de nostalgia a tus preparaciones y disfruta del sabor de los buenos momentos en familia!",
      name: 'Panela Molida',
      imagePath: 'assets/products/panelamolida.jpg'),
  Product(
      description:
          "Nuestra panela redonda es el dulce recordatorio de la cocina casera. Su sabor profundo y meloso transformará tus bebidas y postres en delicias hogareñas. ¡Disfruta del amor hecho panela y siente cómo calienta tu corazón!",
      name: 'Panela Redonda',
      imagePath: 'assets/products/panelaredonda.jpg'),
];

class ProductCard extends StatelessWidget {
  final Product product;
  final String description;

  ProductCard({required this.product, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.asset(
              product.imagePath,
              fit: BoxFit.fitHeight,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: GoogleFonts.courgette(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[900],
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  description,
                  style: GoogleFonts.cabin(
                    fontSize: 14,
                    color: Colors.green[800],
                  ),
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () async {
                        const url = 'https://wa.me/593997968429';
                        String dynamicProductQuery =
                            "?text=Buen día SOBERANA. Quiero información y precio de: ${product.name}";
                        String completeUrl = url + dynamicProductQuery;

                        if (await canLaunchUrl(Uri.parse(completeUrl))) {
                          await launchUrl(Uri.parse(completeUrl));
                        } else {
                          throw 'Could not launch $completeUrl';
                        }
                      },
                      child: Text(
                        'Comprar',
                        style: TextStyle(fontSize: 17),
                      ),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        int crossAxisCount = 3;

        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          crossAxisCount = 1;
        } else if (sizingInformation.deviceScreenType ==
            DeviceScreenType.tablet) {
          crossAxisCount = 2;
        }

        return GridView.builder(
          itemCount: productList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: 0.8,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemBuilder: (BuildContext context, int index) {
            return ProductCard(
              product: productList[index],
              description: productList[index].description,
            );
          },
        );
      },
    );
  }
}
