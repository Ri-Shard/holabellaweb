import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:holabellaweb/ui/auth/auth_controller.dart';
import 'package:holabellaweb/ui/resources/buttons.dart';
import 'package:holabellaweb/ui/resources/my_theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final User? user;

  CustomAppBar({required this.user});

  @override
  Widget build(BuildContext context) {
    double localwidth = MediaQuery.of(context).size.width;
    double localHeigth = MediaQuery.of(context).size.height;
    final authController = Get.find<AuthController>();
    return AppBar(
      toolbarHeight: 200,
      leading: const SizedBox(
        width: 100,
      ),
      title: Container(
        height: localHeigth * 0.04,
        child: SvgPicture.asset('assets/svg/logooscuroyclaro.svg'),
      ),
      flexibleSpace: const Image(
        image: AssetImage('assets/images/BlurAppbarWeb.png'),
        fit: BoxFit.cover,
      ),
      actions: _getActions(context),
    );
  }

  List<Widget> _getActions(BuildContext context) {
    final authController = Get.find<AuthController>();

    if (user == null) {
      return [
        TextButton(
          onPressed: () {
            Get.toNamed('/home');
          },
          child: Text(
            'Inicio',
            style: MyTheme.basicTextStyle(
                color: MyTheme.purpura,
                size: 18,
                decoration: TextDecoration.underline),
          ),
        ),
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
        const SizedBox(
          width: 40,
        ),
        Buttons(
          ontap: () {
            Get.toNamed('/register');
          },
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
          ontap: () {
            Get.toNamed('/login');
          },
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
      ];
    } else {
      return [
        TextButton(
            onPressed: () {
              Get.toNamed('/home');
            },
            child: Text(
              'Inicio',
              style: MyTheme.basicTextStyle(
                  color: MyTheme.purpura,
                  size: 18,
                  decoration: TextDecoration.underline),
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
        const SizedBox(
          width: 60,
        ),
        InkWell(
          onTap: () {
            Get.toNamed('/servicesLayout');
          },
          child: CircleAvatar(
            backgroundColor: Colors.amber,
            child: Image.asset('assets/images/avatar.png'),
          ),
        ),
        const SizedBox(
          width: 100,
        ),
      ];
    }
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
