import 'package:web_la_soberana/ui/shared/custom_app_menu.dart';
import 'package:flutter/material.dart';

class MainLayoutPage extends StatelessWidget {
  final Widget child;

  const MainLayoutPage({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CustomAppMenu(),
            // Spacer(),
            //renderiza todo el espacio posible dinámico
            Expanded(child: child),
            // Spacer(),
          ],
        ),
      ),
    );
  }
}
