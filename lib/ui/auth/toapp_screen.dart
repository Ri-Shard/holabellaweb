import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:holabellaweb/models/user_model.dart';
import 'package:holabellaweb/ui/auth/auth_controller.dart';
import 'package:holabellaweb/ui/resources/buttons.dart';
import 'package:holabellaweb/ui/resources/custom_appbar.dart';
import 'package:holabellaweb/ui/resources/custom_text.dart';
import 'package:holabellaweb/ui/resources/my_theme.dart';
import 'dart:html';

import 'package:quickalert/quickalert.dart';

class ToAppScreen extends StatefulWidget {
  const ToAppScreen({super.key});

  @override
  State<ToAppScreen> createState() => _ToAppScreenState();
}

class _ToAppScreenState extends State<ToAppScreen> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _key = GlobalKey();

    double localwidth = MediaQuery.of(context).size.width;
    double localHeigth = MediaQuery.of(context).size.height;

    final authController = Get.find<AuthController>();
    return Scaffold(
      appBar: CustomAppBar(user: authController.authInstance.currentUser),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/BlurWeb.png',
            fit: BoxFit.cover,
          ),
          Center(
            child: Container(
              width: localwidth * 0.70,
              height: localHeigth * 0.93,
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(25)),
              child: Row(
                children: [
                  Container(
                    width: localwidth * 0.4,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          bottomLeft: Radius.circular(25)),
                      image: DecorationImage(
                        image: AssetImage('assets/images/toappscreen.png'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            MyTheme.verderegister, BlendMode.modulate),
                      ),
                      color: MyTheme.verderegister,
                    ),
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: localwidth * 0.05,
                                  top: localHeigth * 0.05),
                              child: const Text(
                                  'Lista para\nser la más\nbella?',
                                  style: TextStyle(
                                      fontFamily: 'MoonDream',
                                      fontSize: 65,
                                      color: Colors.white)),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: localwidth * 0.05,
                                  top: localHeigth * 0.05,
                                  bottom: localHeigth * 0.05),
                              child: Row(
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        Get.toNamed('/register');
                                      },
                                      child: Text(
                                        'Quiero ser una embajadora de belleza',
                                        style: MyTheme.basicTextStyle(
                                          fontWeight: FontWeight.normal,
                                          decoration: TextDecoration.underline,
                                        ),
                                      )),
                                  // SizedBox(
                                  //   width: 3,
                                  // ),
                                  Transform(
                                      alignment: Alignment.center,
                                      transform: Matrix4.rotationZ(0.6),
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                      ))
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(
                          left: localwidth * 0.05,
                          top: localHeigth * 0.05,
                          bottom: localHeigth * 0.05),
                      width: localwidth * 0.25,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Descarga\nnuestra app',
                                maxLines: 3,
                                style: TextStyle(
                                    fontFamily: 'MoonDream',
                                    fontSize: 36,
                                    color: MyTheme.ocreOscuro)),
                            const Text('Disponible',
                                maxLines: 3,
                                style: TextStyle(
                                    fontFamily: 'MoonDream',
                                    fontSize: 20,
                                    color: MyTheme.ocreOscuro)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 120,
                                  child: Image.asset(
                                      'assets/images/google-play-badge.png'),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 150,
                                  child: Image.asset(
                                      'assets/images/Download_on_the_App_Store_Badge.png'),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '¡Hola bella! Te damos la bienvenida a un espacio donde el cuidado es nuestra prioridad número uno. Aquí, te invitamos a sumergirte en un mundo donde alguien siempre está ahí para cuidarte. Desde nuestra app, nos dedicamos a brindarte una experiencia de belleza que va más allá de lo superficial. Nuestro equipo está comprometido a mimarte, a consentirte y a asegurarse de que te sientas atendida en cada paso del camino. Porque en este oasis de belleza, nunca estarás sola. Siempre habrá alguien cuidándote con atención y cariño, porque tu bienestar es nuestra mayor preocupación.',
                              style: MyTheme.basicTextStyle(
                                  fontWeight: FontWeight.normal,
                                  size: 20,
                                  color: MyTheme.ocreBase),
                              textAlign: TextAlign.justify,
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
