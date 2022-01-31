import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rotas_getx/menu.dart';
import 'package:rotas_getx/paginas/pagina1.dart';
import 'package:rotas_getx/paginas/pagina2.dart';
import 'package:rotas_getx/paginas/pagina3.dart';
import 'package:rotas_getx/paginas/pagina4.dart';
import 'package:rotas_getx/paginas/unknow.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xFF7B1FA2),
      ),
    );

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rotas Getx',
      initialRoute: '/',
      unknownRoute: GetPage(name: '/notfound', page: () => const UnkNowPage()),
      getPages: [
        GetPage(name: '/', page: () => const Menu()),
        GetPage(
            name: '/pagina1',
            page: () => const Pagina1(),
            transition: Transition.zoom),
        GetPage(
            name: '/pagina2/',
            page: () => Pagina2(
                  texto: texto,
                ),
            transition: Transition.zoom),
        GetPage(
            name: '/pagina3',
            page: () => Pagina3(
                  teste: teste,
                ),
            transition: Transition.zoom),
        GetPage(
            name: '/pagina4',
            page: () => const Pagina4(),
            transition: Transition.zoom),
      ],
    );
  }
}
