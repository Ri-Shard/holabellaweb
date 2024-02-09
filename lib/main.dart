import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holabellaweb/firebase_options.dart';
import 'package:holabellaweb/routes.dart';
import 'package:holabellaweb/ui/auth/auth_controller.dart';
import 'package:holabellaweb/ui/resources/my_theme.dart';
import 'package:holabellaweb/ui/services/services_controller.dart';
import 'package:holabellaweb/ui/splash/splash_screen.dart';
import 'package:sizer/sizer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyB2eYklaAPdw-50pcIWyC80iqVM1ZVNQ3A",
        authDomain: "app-holabella.firebaseapp.com",
        projectId: "app-holabella",
        storageBucket: "app-holabella.appspot.com",
        messagingSenderId: "898962222721",
        appId: "1:898962222721:web:dbc994aff5d3d9f954a780"),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double localHeigth = MediaQuery.of(context).size.height;
    Get.put(AuthController());
    Get.put(ServicesController());

    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'HolaBellaWeb',
        getPages: appRoutes(),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: MyTheme.ocreOscuro),
          useMaterial3: true,
        ),
        initialRoute: '/splash',
      );
    });
  }
}
