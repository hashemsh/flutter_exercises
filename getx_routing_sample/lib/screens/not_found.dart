import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_routing_sample/routes/app_routes.dart';

class UnknownRoutePage extends StatelessWidget {
  const UnknownRoutePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Not Found ...'),
        actions: [
          IconButton(
            onPressed: () => Get.offAndToNamed(Routes.home),
            icon: const Icon(Icons.menu),
          )
        ],
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(
              height: 100,
              width: 100,
              child: Placeholder(),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Sorry Route Not found ')
          ],
        ),
      ),
    );
  }
}
