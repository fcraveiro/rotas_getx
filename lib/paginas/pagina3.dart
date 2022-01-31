import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../menu.dart';

class Pagina3 extends StatefulWidget {
  const Pagina3({Key? key, required this.teste}) : super(key: key);

  final Teste teste;

  @override
  _Pagina3State createState() => _Pagina3State();
}

class _Pagina3State extends State<Pagina3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 3'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Dados Passado : ${widget.teste.nome.toString()}'),
            Text('Dados Passado : ${widget.teste.idade.toString()}'),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              child: const Text('Pagina Inicio'),
              onPressed: () {
                Get.back();
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: const Text('Pagina 3'),
              onPressed: () {
                Get.toNamed("/pagina1/");
              },
            ),
          ],
        ),
      ),
    );
  }
}
