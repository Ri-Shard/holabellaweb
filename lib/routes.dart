import 'package:get/get.dart';
import 'package:holabellaweb/ui/auth/login_screen.dart';
import 'package:holabellaweb/ui/home/home_screen.dart';
import 'package:holabellaweb/ui/splash/splash_screen.dart';

appRoutes() => [
      GetPage(
        name: '/home',
        page: () => HomePage(),
        middlewares: [MyMiddelware()],
        transition: Transition.downToUp,
        transitionDuration: const Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/splash',
        page: () => const SplashScreen(),
        middlewares: [MyMiddelware()],
        transition: Transition.downToUp,
        transitionDuration: const Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/login',
        page: () => const LoginScreen(),
        middlewares: [MyMiddelware()],
        transition: Transition.downToUp,
        transitionDuration: const Duration(milliseconds: 200),
      ),
    ];

class MyMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    print(page?.name);
    return super.onPageCalled(page);
  }
}
