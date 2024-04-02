import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp/counter_controller.dart';
import 'package:getxapp/profile_screen.dart';
import 'package:getxapp/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CounterController _counterController=Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Home'),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Obx(() => Text('${_counterController.counter}',style: const TextStyle(
            //   fontSize: 24,
            //   fontWeight: FontWeight.w700,
            // ),),),
            GetBuilder<CounterController>(
              builder: (counterController) {
                return Text('${_counterController.counter}',style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),);
              }
            ),
            ElevatedButton(onPressed: (){
              // Get.to(ProfileScreen());
              //PUSH
              Get.to(()=> const ProfileScreen());
            }, child: const Text('Go to profile Screen')),
            ElevatedButton(onPressed: (){
              //PUSH
              Get.to(()=> const SettingsScreen());
            }, child: const Text('Go to Settings')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          _counterController.increment();
        } ,
        child: const Icon(Icons.add),
      ),
    );
  }
}
