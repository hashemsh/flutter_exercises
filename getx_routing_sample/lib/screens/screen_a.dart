import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_routes.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.arguments['color'],
      appBar: AppBar(
        title: Text(Get.arguments['title']),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Screen A',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text('Arguments : title and background color '),
            const SizedBox(
              height: 15,
            ),
            FilledButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.purpleAccent),
              ),
              onPressed: () => Get.toNamed(Routes.screenB),
              child: const Text('Go to Screen B'),
            ),
            const SizedBox(
              height: 15,
            ),
            FilledButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.blueGrey),
              ),
              onPressed: () => Get.toNamed(Routes.screenC),
              child: const Text('Go to Screen C'),
            ),
          ],
        ),
      ),
    );
  }
}
