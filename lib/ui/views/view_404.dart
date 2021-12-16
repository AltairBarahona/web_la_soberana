import 'package:web_la_soberana/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class View404 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("404",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          Text("No se encotró la página",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          CustomFlatuButton(
              text: "Regresar",
              onPressed: () => Navigator.pushNamed(context, '/stateful'))
        ],
      ),
    );
  }
}
