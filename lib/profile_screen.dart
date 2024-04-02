import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getxapp/home_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Profile'),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              //PUSH_AND_REMOVE_UNTIL
              Get.offAll(()=> const HomeScreen());
            }, child: const Text('Go to  Home')),
            ElevatedButton(onPressed: (){
                  // Get.showSnackbar(const GetSnackBar(
                  //   title: 'Testing',
                  //   message: 'Tesing getx snackbar',
                  // ));
              Get.dialog(const AlertDialog(
                title: Text('Dialog'),
              ));
                }, child: const Text('Show Toast')),
          ],
        ),
      ),
    );
  }
}
