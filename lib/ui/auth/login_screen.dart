import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:holabellaweb/ui/auth/auth_controller.dart';
import 'package:holabellaweb/ui/resources/buttons.dart';
import 'package:holabellaweb/ui/resources/custom_appbar.dart';
import 'package:holabellaweb/ui/resources/custom_text.dart';
import 'package:holabellaweb/ui/resources/my_theme.dart';
import 'dart:html';

import 'package:quickalert/quickalert.dart';

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
    TextEditingController mail = TextEditingController();
    TextEditingController password = TextEditingController();
    final GlobalKey<FormState> _key = GlobalKey();

    final authController = Get.find<AuthController>();

    return Scaffold(
      appBar: CustomAppBar(user: authController.authInstance.currentUser),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: MyTheme.cremabacWeb,
          ),
          Center(
            child: Container(
              width: localwidth * 0.70,
              height: localHeigth * 0.85,
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding: EdgeInsets.only(
                    top: localHeigth * 0.05, bottom: localHeigth * 0.05),
                child: Form(
                  key: _key,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('Iniciar sesión',
                          maxLines: 3,
                          style: TextStyle(
                              fontFamily: 'MoonDream',
                              fontSize: 36,
                              color: MyTheme.ocreOscuro)),
                      Text(
                        'Introduce las credenciales de tu cuenta.',
                        style: MyTheme.basicTextStyle(
                            fontWeight: FontWeight.normal,
                            size: 20,
                            color: MyTheme.ocreBase),
                        textAlign: TextAlign.start,
                      ),
                      Container(
                        width: localwidth * 0.21,
                        padding: EdgeInsets.only(top: localHeigth * 0.02),
                        child: CustomText(
                          validator: (p0) {
                            if (p0!.isEmpty) {
                              return 'Campo vacio, ingrese el correo';
                            }
                          },
                          controller: mail,
                          labeltext: 'Correo',
                          inputType: TextInputType.emailAddress,
                          prefix: const Icon(Icons.mail_outline),
                          suffix: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.cancel_outlined)),
                        ),
                      ),
                      Container(
                        width: localwidth * 0.21,
                        padding: EdgeInsets.only(top: localHeigth * 0.02),
                        child: CustomText(
                          validator: (p0) {
                            if (p0!.isEmpty) {
                              return 'Campo vacio, ingresa tu contraseña ';
                            }
                          },
                          controller: password,
                          labeltext: 'Contraseña',
                          obscureText: true,
                          hint: 'Introduce tu contraseña',
                          prefix: const Icon(Icons.person_2_outlined),
                        ),
                      ),
                      SizedBox(
                        height: localHeigth * 0.02,
                      ),
                      SizedBox(
                        width: localwidth * 0.21,
                        height: localHeigth * 0.06,
                        child: Buttons(
                          content: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  'Iniciar Sesión',
                                  style: MyTheme.basicTextStyle(),
                                ),
                              ),
                            ],
                          ),
                          color: MyTheme.ocreBajo,
                          ontap: () async {
                            if (_key.currentState!.validate()) {
                              final response = await authController.signInMail(
                                  mail.text, password.text);

                              if (response != null) {
                                QuickAlert.show(
                                  width: localHeigth * 0.2,
                                  context: context,
                                  type: QuickAlertType.error,
                                  title: 'Oops...',
                                  text: response,
                                );
                              } else {
                                Get.toNamed('/servicesLayout');
                              }
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: localHeigth * 0.02,
                      ),
                      Text(
                        '- O acceder con -',
                        style: MyTheme.basicTextStyle(
                            size: 14, color: MyTheme.ocreOscuro),
                      ),
                      SizedBox(
                        height: localHeigth * 0.02,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Buttons(
                              ontap: () {},
                              borderradius: 20,
                              content: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20.0),
                                child: SvgPicture.asset(
                                    'assets/svg/GoogleLogo.svg'),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Buttons(
                              borderradius: 20,
                              content: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20.0),
                                child: SvgPicture.asset(
                                    'assets/svg/facebookLogo.svg'),
                              ),
                            ),
                          ])
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
