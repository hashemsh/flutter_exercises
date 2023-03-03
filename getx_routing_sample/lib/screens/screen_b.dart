import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_routes.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade100,
      appBar: AppBar(
        title: Text(Get.parameters["title"] ?? 'Screen B default'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Screen B',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(Get.parameters["body"] ?? "parameter was not received"),
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
