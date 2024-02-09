import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:holabellaweb/ui/auth/auth_controller.dart';
import 'package:holabellaweb/ui/resources/buttons.dart';
import 'package:holabellaweb/ui/resources/custom_appbar.dart';
import 'package:holabellaweb/ui/resources/my_theme.dart';
import 'package:sizer/sizer.dart';

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

    final authController = Get.find<AuthController>();

    return Scaffold(
        appBar: CustomAppBar(user: authController.authInstance.currentUser),
        backgroundColor: MyTheme.cremaback,
        body: ListView(
          children: [
            Container(
              height: localHeigth * 0.7,
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
                            color: MyTheme.ocreBajo, size: 76),
                      ),
                      Text(
                        '¡Únete a nuestra comunidad de belleza!\nRegístrate ahora para desarrollar tu\ntalento y crecer profesionalmente',
                        textAlign: TextAlign.justify,
                        maxLines: 3,
                        style: MyTheme.basicTextStyle(
                            color: MyTheme.ocreParrafo,
                            size: 20,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: localHeigth * 0.02,
                      ),
                      SizedBox(
                        width: localwidth * 0.2,
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
                    width: localwidth * 0.01,
                  ),
                  Container(
                    margin: const EdgeInsets.all(7),
                    width: localwidth * 0.25,
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
                    width: localwidth * 0.01,
                  ),
                  Column(
                    children: [
                      const Spacer(),
                      Container(
                        width: localwidth * 0.12,
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
                            width: localwidth * 0.055,
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
                            width: localwidth * 0.055,
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
                        width: localwidth * 0.12,
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
              height: localHeigth * 0.7,
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
                            '¡Hola Bella! Cada detalle está pensado exclusivamente para ti. Nos esforzamos por ofrecerte una experiencia que no solo realce tu belleza exterior, sino que también celebre tu singularidad interior. Desde una manicure hasta cuidado capilar, cada servicio está diseñado para resaltar lo mejor de ti, para que te sientas segura y radiante en tu propia piel. Nuestro equipo de expertos en belleza está aquí para guiarte, inspirarte y brindarte el cuidado personalizado que mereces. Porque en nuestro mundo de la belleza, tú eres la protagonista, y cada servicio está pensado siempre pensando en tu bienestar.\n',
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
                    child: Text('Bienvenido a\nnuestro mundo de\nBelleza',
                        maxLines: 3,
                        style: TextStyle(
                            fontFamily: 'MoonDream',
                            fontSize: 7.5.sp,
                            color: Colors.white)),
                  ),
                )
              ]),
            ),
            Container(
              height: localHeigth * 0.7,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/seccion2fond.png'),
                    fit: BoxFit.cover,
                    colorFilter:
                        ColorFilter.mode(MyTheme.fucsia, BlendMode.modulate)),
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
                          offset: Offset(0, localHeigth * 0.20),
                          child:
                              Image.asset('assets/images/homesonriendo.png')),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: localHeigth * 0.7,
              child: Stack(children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: localHeigth * 0.2),
                    child: Image.asset('assets/images/imagenseccion3.png'),
                  ),
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
                          '¡Hola bella! Bienvenida a nuestro espacio donde cada detalle está meticulosamente diseñado para celebrar la belleza en todas sus formas. En nuestro sitio web, te invitamos a sumergirte en un universo donde la estética es la protagonista. Desde tratamientos innovadores hasta consejos de estilo, aquí encontrarás todo lo necesario para realzar tu belleza interior y exterior. Sumérgete en un entorno donde cada rincón está pensado para inspirarte y empoderarte. Porque en nuestro mundo, la belleza es más que un ideal, es una experiencia que te transforma. Únete a nosotros y descubre un lugar donde la belleza es el centro de atención y cada momento está impregnado de elegancia y sofisticación.\n',
                          textAlign: TextAlign.left,
                          style: MyTheme.basicTextStyle(
                              color: MyTheme.ocreOscuro,
                              size: 18,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      SizedBox(
                        width: localHeigth * 0.36,
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
            SizedBox(
              height: localHeigth * 0.06,
            ),
            Container(
              height: localHeigth * 0.06,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image(
                    image: AssetImage('assets/images/BlurAppbarWeb.png'),
                    fit: BoxFit.cover,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 100,
                          padding: EdgeInsets.all(8),
                          child: SvgPicture.asset(
                              'assets/svg/logooscuroyclaro.svg')),
                      Text(
                        'Desarrollado por Creative X S.A.S.',
                        style: MyTheme.basicTextStyle(
                            size: 12, color: MyTheme.ocreOscuro),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
