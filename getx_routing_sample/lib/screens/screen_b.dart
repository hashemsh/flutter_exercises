import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_routes.dart';

MaterialColor appbarColor = Colors.indigo;

class ScreenB extends StatefulWidget {
  const ScreenB({super.key});

  @override
  State<ScreenB> createState() => _ScreenBState();
}

class _ScreenBState extends State<ScreenB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade100,
      appBar: AppBar(
        backgroundColor: appbarColor,
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
            SizedBox(
              width: Get.width / 2,
              child: const Divider(
                height: 40,
                thickness: 2,
              ),
            ),
            FilledButton(
              onPressed: () => Get.snackbar(
                'this is title',
                'message for modern snackbar',
                icon: const Icon(
                  Icons.mark_email_unread_sharp,
                  color: Colors.white,
                ),
                colorText: Colors.white,
                backgroundColor: Colors.deepPurple,
              ),
              child: const Text('Modern Snackbar'),
            ),
            const SizedBox(
              height: 15,
            ),
            FilledButton(
              onPressed: () => Get.dialog(AlertDialog(
                actions: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        appbarColor = Colors.pink;
                        Get.back();
                      });
                    },
                    child: const Text('Ok'),
                  )
                ],
                title: const Text("Dialog title "),
                content: const Text("change appbar color for you "),
              )),
              child: const Text('show Dialog'),
            ),
            const SizedBox(
              height: 15,
            ),
            FilledButton(
              onPressed: () => Get.bottomSheet(
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'this is Bottom sheet for test ',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              child: const Text('Bottom Sheet'),
            ),
          ],
        ),
      ),
    );
  }
}
