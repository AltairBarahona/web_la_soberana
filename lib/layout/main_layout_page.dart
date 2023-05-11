import 'package:url_launcher/url_launcher.dart';
import 'package:web_la_soberana/ui/shared/custom_app_menu.dart';
import 'package:flutter/material.dart';

class MainLayoutPage extends StatefulWidget {
  final Widget child;

  const MainLayoutPage({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<MainLayoutPage> createState() => _MainLayoutPageState();
}

class _MainLayoutPageState extends State<MainLayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CustomAppMenu(),
            // Spacer(),
            //renderiza todo el espacio posible dinámico
            Expanded(child: widget.child),
            // Spacer(),
          ],
        ),
      ),
      floatingActionButton: WhatsAppButton(),
    );
  }
}

class WhatsAppButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20, bottom: 20),
      child: FloatingActionButton(
        onPressed: () async {
          const url = 'https://wa.me/593997968429';
          const test = "?text=Buen día SOBERANA. Quiero información";
          String completeUrl = url + test;
          if (await canLaunchUrl(Uri.parse(completeUrl))) {
            await launchUrl(Uri.parse(completeUrl));
          } else {
            throw 'No se pudo abrir $url';
          }
        },

        child: Image.asset(
            'assets/icons/whatsapp.png'), // Reemplaza esto con tu asset de logo de Whatsapp
        backgroundColor: Colors.green,
      ),
    );
  }
}
