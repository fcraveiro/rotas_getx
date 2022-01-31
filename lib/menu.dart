import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

String texto = 'Fernando é o Texto Passado';

Teste teste = Teste(nome: 'José', idade: 22);

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 7,
                fixedSize: const Size(140, 40),
                primary: Colors.purple,
                onSurface: Colors.black,
              ),
              onPressed: () {
                Get.toNamed("/pagina1/");
              },
              child: const Text(
                'Pagina 1',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 7,
                fixedSize: const Size(220, 40),
                primary: Colors.purple,
                onSurface: Colors.black,
              ),
              onPressed: () {
                Get.toNamed("/pagina2/", arguments: texto);
              },
              child: const Text(
                'Pagina 2  Passando : Texto',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 7,
                fixedSize: const Size(220, 40),
                primary: Colors.purple,
                onSurface: Colors.black,
              ),
              onPressed: () {
                Get.toNamed("/pagina3/", arguments: teste);
              },
              child: const Text(
                'Pagina 3 Passando Objeto',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 7,
                fixedSize: const Size(220, 40),
                primary: Colors.purple,
                onSurface: Colors.black,
              ),
              onPressed: () {
                Get.offNamed("/pagina4/");
              },
              child: const Text(
                'Pagina 4 Apagando Rota',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Teste {
  String nome;
  int idade;

  Teste({
    required this.nome,
    required this.idade,
  });
}
