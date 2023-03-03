import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_routing_sample/routes/app_routes.dart';
import 'package:getx_routing_sample/screens/not_found.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX Routing Sample',
      unknownRoute: GetPage(
        name: Routes.notfound,
        page: () => const UnknownRoutePage(),
      ),
      initialRoute: '/',
      getPages: appRoutes(),
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
    );
  }
}
