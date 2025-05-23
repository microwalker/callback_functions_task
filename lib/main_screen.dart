import 'package:callback_functions/input_counter_box.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int totalLength = 0;

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 16,
            children: [
              InputCounterBox(onChanged: (value) => refreshTotalLength(), controller: controller1,),
              InputCounterBox(onChanged: (value) => refreshTotalLength(), controller: controller2,),
              InputCounterBox(onChanged: (value) => refreshTotalLength(), controller: controller3,),
              Text("Summe aller Längen: $totalLength")
            ],
          ),
        ),
      ),
    );
  }

  void refreshTotalLength() {
    setState(() => totalLength = controller1.text.length + controller2.text.length + controller3.text.length); 
  }

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();

    super.dispose();
  }
}
