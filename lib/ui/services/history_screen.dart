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

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final servicecontroller = Get.find<ServiceController>();
  final authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    double localwidth = MediaQuery.of(context).size.width;
    double localHeigth = MediaQuery.of(context).size.height;

    List<ServiceModel?> services = servicecontroller.servicesData;
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
            'Este es el historial de pedidos o contratos que has realizado en el tiempo.',
            style: MyTheme.basicTextStyle(
                fontWeight: FontWeight.normal,
                size: 18,
                color: MyTheme.ocreBase),
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 10,
          ),
          Flexible(
            child: Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CustomText(
                      hint: 'Búsqueda',
                      suffix: Icon(
                        Icons.search,
                        color: MyTheme.ocreBajo,
                      ),
                      prefix: Icon(Icons.menu, color: MyTheme.ocreBajo),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Buttons(
                    ontap: () {},
                    borderColor: Colors.transparent,
                    content: Row(
                      children: [
                        Text('Filtrar por'),
                        const SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.filter_list, color: MyTheme.ocreBase),
                      ],
                    ),
                  ),
                  Buttons(
                    ontap: () {},
                    borderColor: Colors.transparent,
                    content: Row(
                      children: [
                        Text('Ordenar por'),
                        const SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.filter_list, color: MyTheme.ocreBase),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Flexible(
              child: Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(flex: 40, child: Text('Servicio')),
                      Expanded(flex: 40, child: Text('Cliente')),
                      Expanded(flex: 15, child: Text('Fecha')),
                      Expanded(flex: 15, child: Text('Hora')),
                    ],
                  ))),
          Divider(),
          const SizedBox(
            height: 10,
          ),
          GetBuilder<ServiceController>(
              id: 'history',
              builder: (_) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: services.length,
                    itemBuilder: (_, index) {
                      return Flex(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        direction: Axis.horizontal,
                        children: [
                          Expanded(
                              flex: 40, child: Text(services[index]!.name!)),
                          Expanded(
                              flex: 40,
                              child: Text(services[index]!.user_email!)),
                          Expanded(
                              flex: 15, child: Text(services[index]!.date!)),
                          Expanded(
                              flex: 15, child: Text(services[index]!.hour!))
                        ],
                      );
                    },
                  ),
                );
              }),
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
                        'Actualizar',
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
