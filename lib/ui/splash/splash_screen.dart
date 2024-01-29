import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:holabellaweb/ui/resources/my_theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2))
        .whenComplete(() => Get.offAllNamed('/home'));

    return Scaffold(
      backgroundColor: MyTheme.ocreOscuro,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.maxFinite,
          ),
          SvgPicture.asset('assets/svg/LogoBlanco.svg')
        ],
      ),
    );
  }
}
