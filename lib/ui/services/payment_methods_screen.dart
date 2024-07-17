import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:holabellaweb/main.dart';
import 'package:holabellaweb/models/service_model.dart';
import 'package:holabellaweb/ui/auth/auth_controller.dart';
import 'package:holabellaweb/ui/resources/buttons.dart';
import 'package:holabellaweb/ui/resources/custom_appbar.dart';
import 'package:holabellaweb/ui/resources/custom_text.dart';
import 'package:holabellaweb/ui/resources/my_theme.dart';
import 'package:holabellaweb/ui/services/controller/service_controller.dart';
import 'dart:html';

import 'package:quickalert/quickalert.dart';

import '../../models/user_model.dart';

class PaymentsMethodsScreen extends StatefulWidget {
  const PaymentsMethodsScreen({super.key});

  @override
  State<PaymentsMethodsScreen> createState() => _PaymentsMethodsScreenState();
}

class _PaymentsMethodsScreenState extends State<PaymentsMethodsScreen> {
  final servicecontroller = Get.find<ServiceController>();
  final authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    double localwidth = MediaQuery.of(context).size.width;
    double localHeigth = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(
          left: localwidth * 0.03,
          top: localHeigth * 0.05,
          right: localwidth * 0.03),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Métodos de pago',
              style: TextStyle(
                  fontFamily: 'MoonDream',
                  fontSize: 30,
                  color: MyTheme.ocreOscuro)),
          Text(
            'Aquí encontrarás los métodos de pago que tienes registrados en esta plataforma.',
            style: MyTheme.basicTextStyle(
                fontWeight: FontWeight.normal,
                size: 18,
                color: MyTheme.ocreBase),
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
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
                        'Agregar método de pago',
                        style: MyTheme.basicTextStyle(),
                      ),
                    ),
                  ],
                ),
                color: MyTheme.ocreBajo,
                ontap: () {
                  servicecontroller.update(['paymentsmethods']);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
