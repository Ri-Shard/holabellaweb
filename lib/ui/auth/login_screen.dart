import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:holabellaweb/ui/resources/buttons.dart';
import 'package:holabellaweb/ui/resources/my_theme.dart';
import 'dart:html';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double localwidth = MediaQuery.of(context).size.width;
    double localHeigth = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const SizedBox(
          width: 100,
        ),
        title: Container(
          height: localHeigth * 0.4,
          child: SvgPicture.asset('assets/svg/logooscuroyclaro.svg'),
        ),
        flexibleSpace: const Image(
          image: AssetImage('assets/images/BlurAppbarWebLogin.png'),
          fit: BoxFit.cover,
        ),
        actions: [
          TextButton(
              onPressed: () {
                Get.toNamed('/home');
              },
              child: Text(
                'Inicio',
                style: MyTheme.basicTextStyle(color: MyTheme.purpura, size: 18),
              )),
          TextButton(
              onPressed: () {},
              child: Text(
                'Nosotros',
                style:
                    MyTheme.basicTextStyle(color: MyTheme.ocreOscuro, size: 18),
              )),
          TextButton(
              onPressed: () {},
              child: Text(
                'Contacto',
                style:
                    MyTheme.basicTextStyle(color: MyTheme.ocreOscuro, size: 18),
              )),
          Buttons(
            ontap: () {},
            color: Colors.transparent,
            content: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Registrarse',
                style: MyTheme.basicTextStyle(color: MyTheme.purpura, size: 18),
              ),
            ),
            borderColor: MyTheme.purpura,
          ),
          const SizedBox(
            width: 10,
          ),
          Buttons(
            ontap: () {},
            color: MyTheme.fucsia,
            content: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Iniciar Sesión',
                style: MyTheme.basicTextStyle(color: Colors.white, size: 18),
              ),
            ),
            borderColor: MyTheme.fucsia,
          ),
          const SizedBox(
            width: 100,
          ),
        ],
      ),
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
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(25)),
              child: Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          bottomLeft: Radius.circular(25)),
                      image: DecorationImage(
                        opacity: 0.2,
                        image: AssetImage('assets/images/masaje.png'),
                        fit: BoxFit.cover,
                      ),
                      color: MyTheme.purpura,
                    ),
                    child: const Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                'Serás la\npróxima\nembajadora\nde la\nbelleza?',
                                maxLines: 3,
                                style: TextStyle(
                                    fontFamily: 'MoonDream',
                                    fontSize: 65,
                                    color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Column(
                    children: [
                      Text('Registro\nEmbajadora',
                          maxLines: 3,
                          style: TextStyle(
                              fontFamily: 'MoonDream',
                              fontSize: 36,
                              color: MyTheme.ocreOscuro)),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
