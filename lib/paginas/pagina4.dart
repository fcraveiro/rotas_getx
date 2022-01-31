import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pagina4 extends StatefulWidget {
  const Pagina4({Key? key}) : super(key: key);

  @override
  _Pagina4State createState() => _Pagina4State();
}

class _Pagina4State extends State<Pagina4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 4'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 70,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 7,
                    fixedSize: const Size(220, 40),
                    primary: Colors.purple,
                    onSurface: Colors.black,
                  ),
                  onPressed: () {
                    Get.toNamed("/");
                  },
                  child: const Text(
                    'Voltar',
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
                    Get.offNamed("/pagina2/");
                  },
                  child: const Text(
                    'Ir Pagina 2',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
