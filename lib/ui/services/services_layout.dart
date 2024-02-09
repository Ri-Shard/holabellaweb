import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:holabellaweb/main.dart';
import 'package:holabellaweb/ui/auth/auth_controller.dart';
import 'package:holabellaweb/ui/resources/buttons.dart';
import 'package:holabellaweb/ui/resources/custom_appbar.dart';
import 'package:holabellaweb/ui/resources/custom_text.dart';
import 'package:holabellaweb/ui/resources/my_theme.dart';
import 'package:holabellaweb/ui/services/history_screen.dart';
import 'package:holabellaweb/ui/services/profile_screen.dart';
import 'package:holabellaweb/ui/services/services_controller.dart';
import 'dart:html';

import 'package:quickalert/quickalert.dart';

import '../../models/user_model.dart';

class ServicesLayoutScreen extends StatefulWidget {
  const ServicesLayoutScreen({super.key});

  @override
  State<ServicesLayoutScreen> createState() => _ServicesLayoutScreenState();
}

class _ServicesLayoutScreenState extends State<ServicesLayoutScreen> {
  int index = 0;
  List<Widget> views = [ProfileScreen(), HistoryScreen()];
  @override
  @override
  Widget build(BuildContext context) {
    double localwidth = MediaQuery.of(context).size.width;
    double localHeigth = MediaQuery.of(context).size.height;

    final authController = Get.find<AuthController>();
    User? user = authController.verifyuser;
    return Scaffold(
      appBar: CustomAppBar(user: authController.authInstance.currentUser),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: MyTheme.cremabacWeb,
          ),
          Center(
            child: Row(
              children: [
                const Spacer(),
                Container(
                  width: localwidth * 0.2,
                  height: localHeigth * 0.93,
                  decoration: BoxDecoration(
                      color: MyTheme.purpura,
                      borderRadius: BorderRadius.circular(25)),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: localwidth * 0.03,
                        top: localHeigth * 0.05,
                        right: localwidth * 0.03),
                    child: GetBuilder<ServicesController>(
                        id: 'servicesView',
                        builder: (_) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                user!.name!,
                                style: MyTheme.basicTextStyle(),
                              ),
                              SizedBox(
                                height: localHeigth * 0.03,
                              ),
                              SizedBox(
                                height: localHeigth * 0.06,
                                child: Buttons(
                                  content: const Row(
                                    children: [
                                      Icon(
                                        Icons.person_outline,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Perfil',
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                  ontap: () {
                                    index = 0;
                                    _.update(['servicesView']);
                                  },
                                  borderColor: Colors.transparent,
                                  focuscolor: MyTheme.verdeMenta,
                                  splashColor: MyTheme.verdeMenta,
                                  hovercolor: MyTheme.verdeMenta,
                                  highlightColor: MyTheme.verdeMenta,
                                ),
                              ),
                              SizedBox(
                                height: localHeigth * 0.06,
                                child: Buttons(
                                  content: const Row(
                                    children: [
                                      Icon(
                                        Icons.handshake_outlined,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Historial de pedidos',
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                  ontap: () {
                                    index = 1;
                                    _.update(['servicesView']);
                                  },
                                  borderColor: Colors.transparent,
                                  focuscolor: MyTheme.verdeMenta,
                                  splashColor: MyTheme.verdeMenta,
                                  hovercolor: MyTheme.verdeMenta,
                                  highlightColor: MyTheme.verdeMenta,
                                ),
                              ),
                              SizedBox(
                                height: localHeigth * 0.06,
                                child: Buttons(
                                  content: const Row(
                                    children: [
                                      Icon(
                                        Icons.credit_card_outlined,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Métodos de pago',
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                  ontap: () {
                                    Get.toNamed('/drawerhiring');
                                  },
                                  borderColor: Colors.transparent,
                                  focuscolor: MyTheme.verdeMenta,
                                  splashColor: MyTheme.verdeMenta,
                                  hovercolor: MyTheme.verdeMenta,
                                  highlightColor: MyTheme.verdeMenta,
                                ),
                              ),
                              SizedBox(
                                height: localHeigth * 0.06,
                                child: Buttons(
                                  content: const Row(
                                    children: [
                                      Icon(
                                        Icons.beach_access_outlined,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Mis servicios',
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                  ontap: () {
                                    Get.toNamed('/drawerhiring');
                                  },
                                  borderColor: Colors.transparent,
                                  focuscolor: MyTheme.verdeMenta,
                                  splashColor: MyTheme.verdeMenta,
                                  hovercolor: MyTheme.verdeMenta,
                                  highlightColor: MyTheme.verdeMenta,
                                ),
                              ),
                              SizedBox(
                                height: localHeigth * 0.06,
                                child: Buttons(
                                  content: const Row(
                                    children: [
                                      Icon(
                                        Icons.calendar_month_outlined,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Agenda',
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                  ontap: () {
                                    Get.toNamed('/drawerhiring');
                                  },
                                  borderColor: Colors.transparent,
                                  focuscolor: MyTheme.verdeMenta,
                                  splashColor: MyTheme.verdeMenta,
                                  hovercolor: MyTheme.verdeMenta,
                                  highlightColor: MyTheme.verdeMenta,
                                ),
                              ),
                              const Divider(
                                color: MyTheme.dividerpink,
                              ),
                              SizedBox(
                                height: localHeigth * 0.06,
                                child: Buttons(
                                  content: const Row(
                                    children: [
                                      Icon(
                                        Icons.beach_access_outlined,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Mis servicios',
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                  ontap: () {
                                    Get.toNamed('/drawerhiring');
                                  },
                                  borderColor: Colors.transparent,
                                  focuscolor: MyTheme.verdeMenta,
                                  splashColor: MyTheme.verdeMenta,
                                  hovercolor: MyTheme.verdeMenta,
                                  highlightColor: MyTheme.verdeMenta,
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                ),
                SizedBox(
                  width: localwidth * 0.015,
                ),
                Container(
                  width: localwidth * 0.4,
                  height: localHeigth * 0.93,
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(25)),
                  child: GetBuilder<ServicesController>(
                      id: 'servicesView',
                      builder: (context) {
                        return Center(
                          child: views[index],
                        );
                      }),
                ),
                const Spacer(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
