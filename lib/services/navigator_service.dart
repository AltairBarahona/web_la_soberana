import 'package:flutter/material.dart';

class NavigationService {
  /*Debería manjar esto como un singleton porque cad que lo instancio
  se crea´ria un navigatorKey diferente y no me serviría */
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future navigateTo(String routeName) {
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  void goBack(String routeName) {
    return navigatorKey.currentState!.pop();
  }
}
