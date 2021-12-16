import 'package:web_la_soberana/ui/shared/custom_app_menu.dart';
import 'package:web_la_soberana/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  @override
  _CounterViewState createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        Text("Contador Stateful", style: TextStyle(fontSize: 20)),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Contador: $_counter",
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatuButton(
                text: "Decrementar",
                onPressed: () {
                  setState(() {
                    _counter--;
                  });
                }),
            CustomFlatuButton(
                text: "Incrementar",
                onPressed: () {
                  setState(() {
                    _counter++;
                  });
                }),
          ],
        ),
        Spacer(),
      ],
    );
  }
}
