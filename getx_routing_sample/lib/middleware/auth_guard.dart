import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_routes.dart';

String authToken = "";

class AuthGuard extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    return authToken.isEmpty ? const RouteSettings(name: Routes.login) : null;
  }
}
