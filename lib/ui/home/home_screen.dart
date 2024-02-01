import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:holabellaweb/ui/resources/buttons.dart';
import 'package:holabellaweb/ui/resources/custom_appbar.dart';
import 'package:holabellaweb/ui/resources/my_theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double localwidth = MediaQuery.of(context).size.width;
    double localHeigth = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
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
          ],
        ),
        backgroundColor: MyTheme.cremaback,
        body: ListView(
          children: [
            Container(
              height: localHeigth,
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
                        height: localHeigth * 0.02,
                      ),
                      SizedBox(
                        width: localHeigth * 0.3,
                        height: localHeigth * 0.06,
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
                    width: localHeigth * 0.02,
                  ),
                  Container(
                    margin: const EdgeInsets.all(7),
                    width: localHeigth * 0.5,
                    height: localHeigth * 0.5,
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
                    width: localHeigth * 0.02,
                  ),
                  Column(
                    children: [
                      const Spacer(),
                      Container(
                        width: localHeigth * 0.24,
                        height: localHeigth * 0.24,
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
                        height: localHeigth * 0.01,
                      ),
                      Row(
                        children: [
                          Container(
                            width: localHeigth * 0.11,
                            height: localHeigth * 0.11,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/peloblanco.png'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SizedBox(
                            width: localHeigth * 0.02,
                          ),
                          Container(
                            width: localHeigth * 0.11,
                            height: localHeigth * 0.11,
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
                        height: localHeigth * 0.01,
                      ),
                      Container(
                        width: localHeigth * 0.25,
                        height: localHeigth * 0.12,
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
              height: localHeigth,
              color: MyTheme.ocreOscuro,
              child: Stack(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/monamoradahome.png'),
                    SizedBox(
                      width: localHeigth * 0.03,
                    ),
                    Column(
                      children: [
                        const Spacer(),
                        SizedBox(
                          width: localHeigth * 0.35,
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
                          width: localHeigth * 0.30,
                          height: localHeigth * 0.06,
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
                    padding: EdgeInsets.only(
                        left: localwidth * 0.20, top: localHeigth * 0.05),
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
              height: localHeigth,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  opacity: 0.2,
                  image: AssetImage('assets/images/seccion2fond.png'),
                  fit: BoxFit.cover,
                ),
                color: MyTheme.fucsia,
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
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
                            width: localHeigth * 0.30,
                            height: localHeigth * 0.06,
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
                          offset: Offset(0, localHeigth * 0.40),
                          child:
                              Image.asset('assets/images/homesonriendo.png')),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: localHeigth * 1.5,
              child: Stack(children: [
                Center(
                  child: Image.asset('assets/images/imagenseccion3.png'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: localHeigth * 0.30),
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
                        width: localHeigth * 0.50,
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
                        width: localHeigth * 0.30,
                        height: localHeigth * 0.06,
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
