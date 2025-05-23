import 'package:callback_functions/input_counter_box.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 16,
            children: [
              InputCounterBox(backgroundColor: Colors.blueAccent.shade200, onChanged: (value) => debugPrint(value),),
              InputCounterBox(onChanged: (value) => debugPrint(value),),
              InputCounterBox(onChanged: (value) => debugPrint(value), backgroundColor: Colors.yellowAccent.shade200,),
            ],
          ),
        ),
      ),
    );
  }
}
