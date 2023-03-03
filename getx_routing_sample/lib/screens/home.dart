import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_routing_sample/routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, String> parametersB = {
      "title": "Screen B",
      "body": "text from Parameters Get Routing",
    };

    Map<String, Object> argumentA = {
      'title': 'Screen A - Title from Argument',
      'color': Colors.blueAccent.shade100
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
              width: 100,
              child: Placeholder(
                strokeWidth: 3,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text('Home Screen'),
            const SizedBox(
              height: 15,
            ),
            FilledButton(
              onPressed: () =>
                  Get.toNamed(Routes.screenA, arguments: argumentA),
              child: const Text('Go to Screen A'),
            ),
            const SizedBox(
              height: 15,
            ),
            FilledButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.purpleAccent),
              ),
              onPressed: () =>
                  Get.toNamed(Routes.screenB, parameters: parametersB),
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
