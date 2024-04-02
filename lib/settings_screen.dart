import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:getxapp/counter_controller.dart';
import 'package:getxapp/profile_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final CounterController _counterController=Get.find<CounterController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Setting'),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Obx(() => Text('${_counterController.counter}')),
            GetBuilder<CounterController>(
                builder: (controller) {
                  return Text('${controller.counter}',style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),);
                }
            ),
            ElevatedButton(onPressed: (){
              //REPLACE
              Get.off(()=>const ProfileScreen());
            }, child: const Text('Go to profile ')),
            ElevatedButton(onPressed: (){
              //POP
              Get.back();
            }, child: const Text('Back')),
            ElevatedButton(onPressed: (){
             // _counterController.increment();
              Get.find<CounterController>().increment();
            }, child: const Text('Increment')),
          ],
        ),
      ),

    );
  }
}
