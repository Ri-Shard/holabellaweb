import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:holabellaweb/ui/resources/buttons.dart';
import 'package:holabellaweb/ui/resources/custom_appbar.dart';
import 'package:holabellaweb/ui/resources/my_theme.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const SizedBox(
            width: 100,
          ),
          title: Container(
            height: 4.h,
            child: SvgPicture.asset('assets/svg/LogoOcreOscuroyclaro.svg'),
          ),
          flexibleSpace: const Image(
            image: AssetImage('assets/images/BlurAppbarWeb.png'),
            fit: BoxFit.cover,
          ),
          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  'Inicio',
                  style:
                      MyTheme.basicTextStyle(color: MyTheme.purpura, size: 18),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Nosotros',
                  style: MyTheme.basicTextStyle(
                      color: MyTheme.ocreOscuro, size: 18),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Contacto',
                  style: MyTheme.basicTextStyle(
                      color: MyTheme.ocreOscuro, size: 18),
                )),
            Buttons(
              ontap: () {},
              color: Colors.transparent,
              content: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Registrarse',
                  style:
                      MyTheme.basicTextStyle(color: MyTheme.purpura, size: 18),
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
        backgroundColor: MyTheme.cremaback,
        body: ListView(
          children: [
            Container(
              height: 60.h,
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      Text(
                        'Cuidando\ntu belleza',
                        style: MyTheme.moonTextStyle(
                            color: MyTheme.ocreBase, size: 76),
                      ),
                      Text(
                        'Estas invitada a ser parte de esta gran iniciativa',
                        textAlign: TextAlign.left,
                        style: MyTheme.basicTextStyle(
                            color: MyTheme.ocreBase, size: 20),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      SizedBox(
                        width: 30.h,
                        height: 6.h,
                        child: Buttons(
                          content: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                          ontap: () {},
                        ),
                      ),
                      const Spacer()
                    ],
                  ),
                  SizedBox(
                    width: 2.h,
                  ),
                  Container(
                    margin: const EdgeInsets.all(7),
                    width: 50.h,
                    height: 50.h,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image:
                                AssetImage('assets/images/servicioshome.png'),
                            fit: BoxFit.cover),
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(' Uñas,\n Maquillaje y\n Spa',
                            maxLines: 3,
                            style: TextStyle(
                                fontFamily: 'MoonDream',
                                fontSize: 25,
                                color: Colors.white)
                            // MyTheme.basicTextStyle(
                            //     size: 30,
                            //     fontWeight: FontWeight.w400),
                            ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 2.h,
                  ),
                  Column(
                    children: [
                      const Spacer(),
                      Container(
                        width: 24.h,
                        height: 24.h,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/images/pestanias.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('  Cejas y\n  Pestañas',
                                style: TextStyle(
                                    fontFamily: 'MoonDream',
                                    fontSize: 25,
                                    color: Colors.white)),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 11.h,
                            height: 11.h,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/peloblanco.png'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SizedBox(
                            width: 2.h,
                          ),
                          Container(
                            width: 11.h,
                            height: 11.h,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image:
                                        AssetImage('assets/images/paleta.png'),
                                    fit: BoxFit.cover),
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Container(
                        width: 25.h,
                        height: 12.h,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage('assets/images/brochas.png'),
                                fit: BoxFit.cover),
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      const Spacer()
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 60.h,
              color: MyTheme.ocreOscuro,
              child: Stack(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/monamoradahome.png'),
                    SizedBox(
                      width: 3.h,
                    ),
                    Column(
                      children: [
                        const Spacer(),
                        SizedBox(
                          width: 35.h,
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n',
                            textAlign: TextAlign.left,
                            style: MyTheme.basicTextStyle(
                                color: Colors.white,
                                size: 18,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        SizedBox(
                          width: 30.h,
                          height: 6.h,
                          child: Buttons(
                            ontap: () {},
                            color: Colors.transparent,
                            content: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Saber Más',
                                style: MyTheme.basicTextStyle(
                                    color: MyTheme.verdeMenta, size: 18),
                              ),
                            ),
                            borderColor: MyTheme.verdeMenta,
                          ),
                        ),
                        const Spacer()
                      ],
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding: EdgeInsets.only(left: 20.w, top: 5.h),
                    child: const Text(' Siempre\n pensando\n en ti',
                        maxLines: 3,
                        style: TextStyle(
                            fontFamily: 'MoonDream',
                            fontSize: 50,
                            color: Colors.white)),
                  ),
                )
              ]),
            ),
            Container(
              height: 60.h,
              color: MyTheme.fucsia,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Opacity(
                    opacity: 0.2,
                    child: Expanded(
                      child: Image.asset(
                        'assets/images/seccion2fond.jpeg',
                        colorBlendMode: BlendMode.overlay,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(),
                          const Text('Alguien\nsiempre\ncuidándote',
                              maxLines: 3,
                              style: TextStyle(
                                  fontFamily: 'MoonDream',
                                  fontSize: 80,
                                  color: Colors.white)),
                          SizedBox(
                            width: 30.h,
                            height: 6.h,
                            child: Buttons(
                              ontap: () {},
                              color: Colors.transparent,
                              content: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Saber Más',
                                  style: MyTheme.basicTextStyle(
                                      color: Colors.white, size: 18),
                                ),
                              ),
                              borderColor: Colors.white,
                            ),
                          ),
                          const Spacer()
                        ],
                      ),
                      Transform.translate(
                          offset: Offset(0, 20.h),
                          child:
                              Image.asset('assets/images/homesonriendo.png')),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 100.h,
              child: Stack(children: [
                Center(
                  child: Image.asset('assets/images/imagenseccion3.png'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      const Text('Un mundo pensado\npara la belleza',
                          maxLines: 3,
                          style: TextStyle(
                              fontFamily: 'MoonDream',
                              fontSize: 50,
                              color: MyTheme.ocreOscuro)),
                      SizedBox(
                        width: 50.h,
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                          textAlign: TextAlign.left,
                          style: MyTheme.basicTextStyle(
                              color: MyTheme.ocreOscuro,
                              size: 18,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      SizedBox(
                        width: 30.h,
                        height: 6.h,
                        child: Buttons(
                          ontap: () {},
                          color: Colors.transparent,
                          content: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Saber Más',
                              style: MyTheme.basicTextStyle(
                                  color: MyTheme.ocreOscuro, size: 18),
                            ),
                          ),
                          borderColor: MyTheme.ocreOscuro,
                        ),
                      ),
                      const Spacer()
                    ],
                  ),
                )
              ]),
            ),
          ],
        ));
  }
}
