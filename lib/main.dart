import 'package:flutter/material.dart';
import 'package:web_la_soberana/layout/main_layout_page.dart';
import 'package:web_la_soberana/locator.dart';
import 'package:web_la_soberana/router/router_generator.dart';
import 'package:web_la_soberana/services/navigator_service.dart';

void main() {
  //inicializo singleton que me provee una sola instancia de navigatorKey
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      showPerformanceOverlay: false,
      title: 'WebLaSoberana',
      initialRoute: "/home",
      onGenerateRoute: RouteGenerator.generateRoute,
      /*Get_it me permite tener refeencia al singleton instancia del 
      locador.dart para manejar una sola instancia de navigatorKey.
      Ese singleton me busca la instancia del NavigationService
      y de este necesito la única instancia del navigatorKey
      */
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (context, child) {
        return MainLayoutPage(
          child: child ?? CircularProgressIndicator(),
        );
      },
    );
  }
}
