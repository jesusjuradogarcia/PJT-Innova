import 'package:flutter/material.dart';

import 'pagina_inicio.dart';

class Paginainicio extends StatefulWidget {
  const Paginainicio({Key? key}) : super(key: key);

  @override
  State<Paginainicio> createState() => _PaginainicioState();
}

class _PaginainicioState extends State<Paginainicio> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            Container(
              height: size.height / 1.8,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Image.network(
                "data:image/jpeg;base64,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",
                // height: 50,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Bienvenido a INNOVASPORT",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 100,
                    ),
                    child: Text(
                      "Mejores productos para un buen estilo de vida",
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Pagina1();
                    })),
                    child: Container(
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Center(
                        child: Text(
                          "Continuar",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
