import 'package:web_la_soberana/ui/views/1_home_view.dart';
import 'package:web_la_soberana/ui/views/2_tienda_view.dart';
import 'package:web_la_soberana/ui/views/3_contacto_view.dart';
import 'package:web_la_soberana/ui/views/view_404.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import "package:flutter/foundation.dart" show kIsWeb;

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //Basado en el nombre de la ruta necesito generar algo
    switch (settings.name) {
      case '/home':
        return _fadeRoute(HomeView(), "/home");
      // case '/tienda':
      //   return _fadeRoute(TiendaView(), "/tienda");
      case '/contacto':
        return _fadeRoute(ContactoView(), "/contacto");

      // return MaterialPageRoute(
      //   settings: RouteSettings(name: '/provider'),
      //   builder: (_) => CounterProviderPage(),
      // );
      default:
        return _fadeRoute(View404(), "/404");

      // return MaterialPageRoute(
      //   settings: RouteSettings(name: '/404'),
      //   builder: (_) => Page404(),
      // );
    }
    // return MaterialPageRoute(builder: (_) => CounterPage());
  }

  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
        settings: RouteSettings(name: routeName),
        pageBuilder: (_, __, ___) => child,
        // transitionDuration: Duration(milliseconds: 200),

        // Hero animation trabaja con la transición de FadeTransition
        transitionsBuilder: (_, animation, __, ___) => (kIsWeb)
            ? FadeTransition(
                opacity: animation,
                child: child,
              )
            : CupertinoPageTransition(
                primaryRouteAnimation: animation,
                secondaryRouteAnimation: __,
                child: child,
                linearTransition: true,
              ));
  }
}
