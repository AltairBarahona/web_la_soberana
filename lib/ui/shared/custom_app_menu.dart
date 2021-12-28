import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:web_la_soberana/locator.dart';

import 'package:web_la_soberana/services/navigator_service.dart';
import 'package:web_la_soberana/ui/shared/custom_flat_button.dart';

class CustomAppMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // print("App bar creado");
    return LayoutBuilder(
      builder: (_, constraints) {
        return (constraints.maxWidth > 460)
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
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 01),
      color: Colors.yellow,
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatuButton(
              text: "La Soberana",
              color: Colors.red,
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
          // CustomFlatuButton(
          //   text: "Otra página",
          //   color: Colors.black,
          //   onPressed: () => locator<NavigationService>().navigateTo("/abc123"),
          // ),
        ],
      ),
    );
  }
}

class _MobileMenu extends StatefulWidget {
  @override
  __MobileMenuState createState() => __MobileMenuState();
}

class __MobileMenuState extends State<_MobileMenu>
    with SingleTickerProviderStateMixin {
  bool isOpen = false;
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: double.infinity,
        color: Colors.yellow,
        child: Container(
            // width: size.width * 0.2,
            // height: size.height * 0.07,
            // color: Colors.black,
            child: _MenuTitle(isOpen: isOpen, controller: controller)));
  }
}

class _MenuTitle extends StatefulWidget {
  const _MenuTitle({
    Key? key,
    required this.isOpen,
    required this.controller,
  }) : super(key: key);

  final bool isOpen;
  final AnimationController controller;

  @override
  __MenuTitleState createState() => __MenuTitleState();
}

class __MenuTitleState extends State<_MenuTitle> {
  bool isOpen2 = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        if (isOpen2) {
          widget.controller.reverse();
        } else {
          widget.controller.forward();
        }
        setState(() {
          isOpen2 = !isOpen2;
        });
      },
      child: Column(
        children: [
          Container(
            // width: size.width*0.2,
            // height: size.height * 0.05,
            color: Colors.transparent,
            child: Row(
              children: [
                Spacer(),
                AnimatedContainer(
                  duration: Duration(milliseconds: 400),
                  curve: Curves.easeOut,
                  color: Colors.pink,
                  width: widget.isOpen ? 42 : 0,
                ),
                Text(
                  "Menú",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                AnimatedIcon(
                  icon: AnimatedIcons.menu_close,
                  progress: widget.controller,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          if (isOpen2 && size.width > 600) ...[
            CustomFlatuButton(
              text: "La Soberana",
              color: Colors.red,
              onPressed: () {
                return locator<NavigationService>().navigateTo("/home");
              },
            ),
            Divider(color: Colors.black, thickness: 0.1),
            CustomFlatuButton(
              text: "Nuestra tienda",
              color: Colors.black,
              onPressed: () {
                return locator<NavigationService>().navigateTo("/tienda");
              },
            ),
            Divider(color: Colors.black, thickness: 0.1),
            CustomFlatuButton(
              text: "Contacto",
              color: Colors.black,
              onPressed: () {
                return locator<NavigationService>().navigateTo("/contacto");
              },
            ),
          ],
          if (isOpen2 && size.width <= 600) ...[
            CustomFlatuButton(
              text: "La Soberana",
              color: Colors.red,
              onPressed: () {
                if (isOpen2) {
                  widget.controller.reverse();
                } else {
                  widget.controller.forward();
                }
                setState(() {
                  isOpen2 = !isOpen2;
                });
                return locator<NavigationService>().navigateTo("/home");
              },
            ),
            Divider(color: Colors.black, thickness: 0.1),
            CustomFlatuButton(
              text: "Nuestra tienda",
              color: Colors.black,
              onPressed: () {
                if (isOpen2) {
                  widget.controller.reverse();
                } else {
                  widget.controller.forward();
                }
                setState(() {
                  isOpen2 = !isOpen2;
                });
                return locator<NavigationService>().navigateTo("/tienda");
              },
            ),
            Divider(color: Colors.black, thickness: 0.1),
            CustomFlatuButton(
              text: "Contacto",
              color: Colors.black,
              onPressed: () {
                if (isOpen2) {
                  widget.controller.reverse();
                } else {
                  widget.controller.forward();
                }
                setState(() {
                  isOpen2 = !isOpen2;
                });
                return locator<NavigationService>().navigateTo("/contacto");
              },
            ),
          ]
        ],
      ),
    );
  }
}

/*
Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatuButton(
            text: "La Soberana",
            color: Colors.red,
            onPressed: () => locator<NavigationService>().navigateTo("/home"),
          ),
          Divider(color: Colors.black, thickness: 0.1),
          CustomFlatuButton(
            text: "Nuestra tienda",
            color: Colors.black,
            onPressed: () => locator<NavigationService>().navigateTo("/tienda"),
          ),
          Divider(color: Colors.black, thickness: 0.1),
          CustomFlatuButton(
            text: "Contacto",
            color: Colors.black,
            onPressed: () =>
                locator<NavigationService>().navigateTo("/contacto"),
          ),
        ],
      ), */
