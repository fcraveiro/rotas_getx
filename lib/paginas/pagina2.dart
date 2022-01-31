import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pagina2 extends StatefulWidget {
  const Pagina2({Key? key, required this.texto}) : super(key: key);

  final String texto;

  @override
  _Pagina2State createState() => _Pagina2State();
}

class _Pagina2State extends State<Pagina2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 2'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 90,
            ),
            Text('Dados Passado : ${widget.texto}'),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 7,
                fixedSize: const Size(220, 40),
                primary: Colors.purple,
                onSurface: Colors.black,
              ),
              onPressed: () {
                Get.offNamed('/pagina4/');
              },
              child: const Text(
                'Voltar Pagina 4',
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
                Get.offNamed('/');
              },
              child: const Text(
                'Voltar Menu',
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
                Get.offNamed('/outra/');
              },
              child: const Text(
                'Pagina Errada',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
