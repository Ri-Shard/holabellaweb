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

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _key = GlobalKey();

    double localwidth = MediaQuery.of(context).size.width;
    double localHeigth = MediaQuery.of(context).size.height;
    TextEditingController mail = TextEditingController();
    TextEditingController name = TextEditingController();
    TextEditingController phone = TextEditingController();
    TextEditingController address = TextEditingController();
    TextEditingController city = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController verifypassword = TextEditingController();

    bool obscureText = true;

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
                        image: AssetImage('assets/images/masaje.png'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            MyTheme.purpura, BlendMode.modulate),
                      ),
                      color: MyTheme.purpura,
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
                                  'Serás la\npróxima\nembajadora\nde la\nbelleza?',
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
                                        Get.toNamed('/toapp');
                                      },
                                      child: Text(
                                        'Sólo quiero ser más bella',
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
                  GetBuilder(
                      id: 'registerView',
                      init: authController,
                      builder: (_) {
                        return Form(
                          key: _key,
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: localwidth * 0.05,
                                  top: localHeigth * 0.05,
                                  bottom: localHeigth * 0.05),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text('Registro\nEmbajadora',
                                          maxLines: 3,
                                          style: TextStyle(
                                              fontFamily: 'MoonDream',
                                              fontSize: 36,
                                              color: MyTheme.ocreOscuro)),
                                      Text(
                                        'Estas invitada a ser parte de esta gran iniciativa',
                                        style: MyTheme.basicTextStyle(
                                            fontWeight: FontWeight.normal,
                                            size: 20,
                                            color: MyTheme.ocreBase),
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: localwidth * 0.21,
                                    padding: EdgeInsets.only(
                                        top: localHeigth * 0.02),
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
                                    padding: EdgeInsets.only(
                                        top: localHeigth * 0.02),
                                    child: CustomText(
                                      validator: (p0) {
                                        if (p0!.isEmpty) {
                                          return 'Campo vacio, ingresa tu nombre y apellido ';
                                        }
                                      },
                                      controller: name,
                                      labeltext: 'Nombres',
                                      hint: 'Introduce tu nombre y apellido',
                                      prefix:
                                          const Icon(Icons.person_2_outlined),
                                    ),
                                  ),
                                  Container(
                                    width: localwidth * 0.21,
                                    padding: EdgeInsets.only(
                                        top: localHeigth * 0.02),
                                    child: CustomText(
                                      validator: (p0) {
                                        if (p0!.isEmpty) {
                                          return 'Campo vacio, ingrese el celular';
                                        }
                                      },
                                      controller: phone,
                                      labeltext: 'Celular',
                                      hint:
                                          'El celular debe estar asociado a WhatsApp',
                                      inputType: TextInputType.phone,
                                      prefix: const Icon(Icons.dialpad),
                                    ),
                                  ),
                                  Container(
                                    width: localwidth * 0.21,
                                    padding: EdgeInsets.only(
                                        top: localHeigth * 0.02),
                                    child: CustomText(
                                      validator: (p0) {
                                        if (p0!.isEmpty) {
                                          return 'Campo vacio, ingrese una dirección';
                                        }
                                      },
                                      controller: address,
                                      labeltext: 'Dirección',
                                      hint: 'Introduce una dirección',
                                      prefix: const Icon(
                                          Icons.location_on_outlined),
                                    ),
                                  ),
                                  Container(
                                    width: localwidth * 0.21,
                                    padding: EdgeInsets.only(
                                        top: localHeigth * 0.02),
                                    child: CustomText(
                                      validator: (p0) {
                                        if (p0!.isEmpty) {
                                          return 'Campo vacio, ingrese una ciudad';
                                        }
                                      },
                                      controller: city,
                                      labeltext: 'Ciudad',
                                      hint: 'Introduce una Ciudad',
                                      prefix: const Icon(
                                          Icons.location_on_outlined),
                                    ),
                                  ),
                                  Container(
                                    width: localwidth * 0.21,
                                    padding: EdgeInsets.only(
                                        top: localHeigth * 0.02),
                                    child: CustomText(
                                      validator: (p0) {
                                        if (p0!.isEmpty) {
                                          return 'Campo vacio, ingrese una contraseña';
                                        }
                                        if (p0.length < 6) {
                                          return 'La contraseña debe tener mas de 6 caracteres';
                                        }
                                      },
                                      onChanged: (text) {
                                        _.update(['registerView']);
                                      },
                                      suffix: InkWell(
                                        child: Icon(!obscureText
                                            ? Icons.visibility_off_outlined
                                            : Icons.visibility_outlined),
                                        onTap: () {
                                          obscureText = !obscureText;
                                          _.update(['registerView']);
                                        },
                                      ),
                                      controller: password,
                                      labeltext: 'Contraseña',
                                      hint: 'Contraseña',
                                      obscureText: obscureText,
                                      prefix: const Icon(Icons.password),
                                    ),
                                  ),
                                  Container(
                                    width: localwidth * 0.21,
                                    padding: EdgeInsets.only(
                                        top: localHeigth * 0.02),
                                    child: CustomText(
                                      validator: (p0) {
                                        if (p0!.isEmpty) {
                                          return 'Campo vacio, confirme la contraseña';
                                        }
                                        if (p0.length < 6) {
                                          return 'La contraseña debe tener mas de 6 caracteres';
                                        }
                                        if (p0 != password.text) {
                                          return 'La contraseñas no coinciden';
                                        }
                                      },
                                      onChanged: (text) {
                                        _.update(['registerView']);
                                      },
                                      suffix: InkWell(
                                        child: Icon(!obscureText
                                            ? Icons.visibility_off_outlined
                                            : Icons.visibility_outlined),
                                        onTap: () {
                                          obscureText = !obscureText;
                                          _.update(['registerView']);
                                        },
                                      ),
                                      controller: verifypassword,
                                      labeltext: 'Verificar',
                                      hint: 'Verifica tu contraseña',
                                      obscureText: obscureText,
                                      prefix: const Icon(Icons.password),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Text(
                                              'Registrarse',
                                              style: MyTheme.basicTextStyle(),
                                            ),
                                          ),
                                        ],
                                      ),
                                      color: MyTheme.ocreBajo,
                                      ontap: () async {
                                        if (_key.currentState!.validate()) {
                                          final response = await _.signUpMail(
                                              mail.text,
                                              password.text,
                                              User(
                                                email: mail.text.trim(),
                                                name: name.text.trim(),
                                                phone: phone.text.trim(),
                                                address: address.text.trim(),
                                                city: city.text.trim(),
                                              ));
                                          if (response ==
                                              "Correo en uso, por favor utilice otro") {
                                            QuickAlert.show(
                                              width: localHeigth * 0.2,
                                              context: context,
                                              type: QuickAlertType.error,
                                              title: 'Oops...',
                                              text:
                                                  "Correo en uso, por favor utilice otro",
                                            );
                                          } else {
                                            Get.toNamed('/home');
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Buttons(
                                          ontap: () {},
                                          borderradius: 20,
                                          content: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 20.0),
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
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 20.0),
                                            child: SvgPicture.asset(
                                                'assets/svg/facebookLogo.svg'),
                                          ),
                                        ),
                                      ])
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
