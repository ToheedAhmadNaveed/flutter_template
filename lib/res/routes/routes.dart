import 'package:get/route_manager.dart';
import 'package:kindura_ai/res/routes/routes_name.dart';
import 'package:kindura_ai/screens/home_screen/home_screen.dart';
import 'package:kindura_ai/screens/login_screen/login_screen.dart';
import 'package:kindura_ai/screens/splash_screen/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
            name: RoutesName.splash_screen,
            page: () => SplashScreen(),
            transition: Transition.circularReveal),
        GetPage(
            name: RoutesName.login_screen,
            page: () => Login_Screen(),
            transition: Transition.circularReveal),
        GetPage(
            name: RoutesName.home_screen,
            page: () => Home(),
            transition: Transition.circularReveal)
      ];
}
