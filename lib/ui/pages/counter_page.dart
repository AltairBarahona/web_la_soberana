import 'package:web_la_soberana/ui/shared/custom_app_menu.dart';
import 'package:web_la_soberana/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppMenu(),
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
      ),
    );
  }
}
