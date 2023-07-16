import 'package:belajar_state_manager/view/counter.view.dart';
import 'package:flutter/material.dart';

class CounterState extends State<CounterView> {
  int counter = 0;

  /// use widget.build and attach this with state, context;
  /// @this => state
  /// @context => context of counter state
  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
