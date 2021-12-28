import 'package:web_la_soberana/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:web_la_soberana/ui/shared/custom_flat_button.dart';
import 'package:provider/provider.dart';

class CounterProviderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: _CounterProviderViewBody(),
    );
  }
}

class _CounterProviderViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        Text("Contador provider", style: TextStyle(fontSize: 20)),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Contador: ${counterProvider.counter}",
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
                counterProvider.decrement();
              },
            ),
            CustomFlatuButton(
              text: "Incrementar",
              onPressed: () {
                counterProvider.increment();
              },
            ),
          ],
        ),
        Spacer(),
      ],
    );
  }
}
