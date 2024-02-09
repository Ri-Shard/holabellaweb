import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:holabellaweb/main.dart';
import 'package:holabellaweb/ui/auth/auth_controller.dart';
import 'package:holabellaweb/ui/resources/buttons.dart';
import 'package:holabellaweb/ui/resources/custom_appbar.dart';
import 'package:holabellaweb/ui/resources/custom_text.dart';
import 'package:holabellaweb/ui/resources/my_theme.dart';
import 'dart:html';

import 'package:quickalert/quickalert.dart';

import '../../models/user_model.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    double localwidth = MediaQuery.of(context).size.width;
    double localHeigth = MediaQuery.of(context).size.height;

    final authController = Get.find<AuthController>();
    User user = authController.verifyuser!;
    return Padding(
      padding: EdgeInsets.only(
          left: localwidth * 0.03,
          top: localHeigth * 0.05,
          right: localwidth * 0.03),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Historial',
              style: TextStyle(
                  fontFamily: 'MoonDream',
                  fontSize: 30,
                  color: MyTheme.ocreOscuro)),
          Text(
            'Estos son los datos de tu cuenta, acá también podrás editarlos.',
            style: MyTheme.basicTextStyle(
                fontWeight: FontWeight.normal,
                size: 18,
                color: MyTheme.ocreBase),
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            width: 120,
            height: 120,
            child: CircleAvatar(
              backgroundColor: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nombres y Apellidos',
                    style: MyTheme.basicTextStyle(
                        fontWeight: FontWeight.normal,
                        size: 18,
                        color: MyTheme.ocreBase),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    user.name!,
                    style: MyTheme.basicTextStyle(
                        fontWeight: FontWeight.normal,
                        size: 24,
                        color: MyTheme.ocreBase),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Correo',
                    style: MyTheme.basicTextStyle(
                        fontWeight: FontWeight.normal,
                        size: 18,
                        color: MyTheme.ocreBase),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    user.email!,
                    style: MyTheme.basicTextStyle(
                        fontWeight: FontWeight.normal,
                        size: 24,
                        color: MyTheme.ocreBase),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Ciudad',
                    style: MyTheme.basicTextStyle(
                        fontWeight: FontWeight.normal,
                        size: 18,
                        color: MyTheme.ocreBase),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'Valledupar, Cesar',
                    style: MyTheme.basicTextStyle(
                        fontWeight: FontWeight.normal,
                        size: 24,
                        color: MyTheme.ocreBase),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Celular',
                    style: MyTheme.basicTextStyle(
                        fontWeight: FontWeight.normal,
                        size: 18,
                        color: MyTheme.ocreBase),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    user.phone!,
                    style: MyTheme.basicTextStyle(
                        fontWeight: FontWeight.normal,
                        size: 24,
                        color: MyTheme.ocreBase),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Dirección',
                    style: MyTheme.basicTextStyle(
                        fontWeight: FontWeight.normal,
                        size: 18,
                        color: MyTheme.ocreBase),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    user.address!,
                    style: MyTheme.basicTextStyle(
                        fontWeight: FontWeight.normal,
                        size: 24,
                        color: MyTheme.ocreBase),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: SizedBox(
              width: localwidth * 0.15,
              height: localHeigth * 0.06,
              child: Buttons(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Editar',
                        style: MyTheme.basicTextStyle(),
                      ),
                    ),
                  ],
                ),
                color: MyTheme.ocreBajo,
                ontap: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
