import 'package:get/get.dart';
import 'package:getx_routing_sample/screens/home.dart';
import 'package:getx_routing_sample/screens/login.dart';
import 'package:getx_routing_sample/screens/screen_a.dart';
import 'package:getx_routing_sample/screens/screen_b.dart';
import 'package:getx_routing_sample/screens/screen_c.dart';

class Routes {
  static const String home = "/";
  static const String screenA = "/ScreenA";
  static const String screenB = "/ScreenB";
  static const String screenC = "/ScreenC";
  static const String login = "/login";
  static const String notfound = "/notfound";
}

List<GetPage> appRoutes() => [
      GetPage(
        name: Routes.home,
        page: () => const HomeScreen(),
      ),
      GetPage(
        name: Routes.screenA,
        page: () => const ScreenA(),
        transition: Transition.leftToRightWithFade,
      ),
      GetPage(
        name: Routes.screenB,
        page: () => const ScreenB(),
        transition: Transition.cupertino,
      ),
      GetPage(
        name: Routes.screenC,
        page: () => const ScreenC(),
        transition: Transition.downToUp,
      ),
      GetPage(
        name: Routes.login,
        page: () => const LoginScreen(),
        transition: Transition.zoom,
      )
    ];
