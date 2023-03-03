import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_routing_sample/routes/app_routes.dart';

import '../middleware/auth_guard.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
                width: 100,
                child: Placeholder(),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text('You most Login First '),
              const TextField(
                decoration: InputDecoration(
                  label: Text('UserName'),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const TextField(
                decoration: InputDecoration(
                  label: Text('Password'),
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 15,
              ),
              FilledButton(
                onPressed: () {
                  authToken = "hash1122145Token";
                  Get.offAndToNamed(Routes.screenC);
                },
                child: const Text('Login'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
