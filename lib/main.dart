import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holabellaweb/firebase_options.dart';
import 'package:holabellaweb/routes.dart';
import 'package:holabellaweb/ui/auth/auth_controller.dart';
import 'package:holabellaweb/ui/resources/my_theme.dart';
import 'package:holabellaweb/ui/services/controller/service_controller.dart';
import 'package:holabellaweb/ui/splash/splash_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   await Firebase.initializeApp(
//     options: const FirebaseOptions(
//         apiKey: "AIzaSyB2eYklaAPdw-50pcIWyC80iqVM1ZVNQ3A",
//         authDomain: "app-holabella.firebaseapp.com",
//         projectId: "app-holabella",
//         storageBucket: "app-holabella.appspot.com",
//         messagingSenderId: "898962222721",
//         appId: "1:898962222721:web:dbc994aff5d3d9f954a780"),
//   );
//   runApp(MyApp());
// }

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Supabase.initialize(
    url: 'https://pbzeqpdyjxmpqztgsnqw.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBiemVxcGR5anhtcHF6dGdzbnF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTM4OTYyMzYsImV4cCI6MjAyOTQ3MjIzNn0.h8EgL8mBenCM5d9jKzO9DAsBYpxswhasQe-Wt__OdJc',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double localHeigth = MediaQuery.of(context).size.height;
    Get.put(AuthController());
    Get.put(ServiceController());

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
