import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp/home_screen.dart';

void main(){
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const HomeScreen(),
      initialBinding: ControllerBinder(),
    );
  }
}


class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    // Get.put(CounterController());
    Get.lazyPut(() => ControllerBinder());
  }

}
