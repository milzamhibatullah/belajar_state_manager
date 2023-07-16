import 'package:belajar_state_manager/state/counter.state.dart';
import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  /// create widget build here and attach on counter state build overrides method
  Widget build(context, CounterState state) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar State Manager'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${state.counter}',
                style: const TextStyle(fontSize: 16.0),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FilledButton.icon(
                    onPressed: () {
                      // ignore: invalid_use_of_protected_member
                      state.setState(() {
                        state.counter++;
                      });
                    },
                    icon: const Icon(Icons.add),
                    label: const Text('Increment'),
                  ),
                  const SizedBox(
                    width: 16.0,
                  ),
                  FilledButton.icon(
                    onPressed: () {
                      // ignore: invalid_use_of_protected_member
                      state.setState(() {
                        ///if counter value is greater than zero do decrement else set counter.value with default
                        state.counter > 0 ? state.counter-- : state.counter;
                      });
                    },
                    icon: const Icon(Icons.remove),
                    label: const Text('Decrement'),
                  )
                ],
              )
            ]),
      ),
    );
  }

  @override
  State<CounterView> createState() => CounterState();
}
