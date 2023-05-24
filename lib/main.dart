import 'package:flutter/material.dart';
import 'package:jesus/paginas/comienzo.dart';

void main() {
  runApp(const AppTiendadeportiva());
}

class AppTiendadeportiva extends StatelessWidget {
  const AppTiendadeportiva({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'INNOVASPORT',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Paginainicio(),
    );
  }
}
