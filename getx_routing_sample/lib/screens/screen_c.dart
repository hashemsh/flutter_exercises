import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_routing_sample/routes/app_routes.dart';

import '../middleware/auth_guard.dart';

class ScreenC extends StatelessWidget {
  const ScreenC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent.shade100,
      appBar: AppBar(
        title: const Text('Screen C has AuthGuard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Screen C',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text('Token generated '),
            const SizedBox(
              height: 15,
            ),
            Text('token : $authToken'),
            const SizedBox(
              height: 15,
            ),
            FilledButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.redAccent),
              ),
              onPressed: () {
                authToken = "";
                Get.offAllNamed(Routes.home);
              },
              child: const Text('logout'),
            ),
          ],
        ),
      ),
    );
  }
}
