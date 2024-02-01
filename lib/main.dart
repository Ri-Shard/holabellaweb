import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holabellaweb/routes.dart';
import 'package:holabellaweb/ui/resources/my_theme.dart';
import 'package:holabellaweb/ui/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double localHeigth = MediaQuery.of(context).size.height;

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
  }
}
