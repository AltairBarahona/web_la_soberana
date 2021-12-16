import 'package:flutter/material.dart';

import 'package:web_la_soberana/locator.dart';

import 'package:web_la_soberana/services/navigator_service.dart';
import 'package:web_la_soberana/ui/shared/custom_flat_button.dart';

class CustomAppMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("App bar creado");
    return LayoutBuilder(
      builder: (_, constraints) {
        return (constraints.maxWidth > 520)
            ? _TabletDesktopMenu()
            : _MobileMenu();
      },
    );
  }
}

class _TabletDesktopMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatuButton(
              text: "La soberana",
              onPressed: () {
                locator<NavigationService>().navigateTo("/home");
              }),
          CustomFlatuButton(
            text: "Nuestra tienda",
            color: Colors.black,
            onPressed: () => locator<NavigationService>().navigateTo("/tienda"),
          ),
          SizedBox(width: 10),
          CustomFlatuButton(
            text: "Contacto",
            color: Colors.black,
            onPressed: () =>
                locator<NavigationService>().navigateTo("/contacto"),
          ),
          SizedBox(width: 10),
          CustomFlatuButton(
            text: "Otra página",
            color: Colors.black,
            onPressed: () => locator<NavigationService>().navigateTo("/abc123"),
          ),
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatuButton(
            text: "Contador Stateful",
            color: Colors.black,
            onPressed: () =>
                locator<NavigationService>().navigateTo("/stateful"),
          ),
          SizedBox(width: 10),
          CustomFlatuButton(
            text: "Contador Provider",
            color: Colors.black,
            onPressed: () =>
                locator<NavigationService>().navigateTo("/provider"),
          ),
          SizedBox(width: 10),
          CustomFlatuButton(
            text: "Otra página",
            color: Colors.black,
            onPressed: () => locator<NavigationService>().navigateTo("/abc123"),
          ),
        ],
      ),
    );
  }
}
