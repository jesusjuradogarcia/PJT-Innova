import 'package:flutter/material.dart';
import 'package:jesus/paginas/comienzo.dart';
import '../widgets/producto_item.dart';
import '../widgets/cliente_item.dart';

class Pagina1 extends StatefulWidget {
  const Pagina1({Key? key}) : super(key: key);

  @override
  State<Pagina1> createState() => _HomePageState();
}

class _HomePageState extends State<Pagina1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 24,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black54,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month_outlined,
              color: Colors.black54,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble_outline,
              color: Colors.black54,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Colors.black54,
            ),
            label: '',
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back),
                        tooltip: 'Volver',
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const Paginainicio();
                          }));
                        },
                      ),
                      Text(
                        "Hola,",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Pagina Principal",
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCul3gUT528dXkAwrPtq0VYJ0sHSZriI3NMw&usqp=CAU"),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 223, 200, 228),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                      "data:image/png;base64,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",
                      width: 92,
                      height: 100,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Que buscas?",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const SizedBox(
                          width: 120,
                          child: Text(
                            "que tipo de productos buscas?",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 150,
                          height: 35,
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(12.0)),
                          child: const Center(
                            child: Text(
                              "siguiente",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 16),
                height: 64,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(95, 179, 173, 173),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                      size: 32,
                      color: Colors.black54,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Como ayudarte?",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ClienteItem(
                      imagePath: "assets/tenis1.jpg",
                      imageName: "Tenis",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    ClienteItem(
                      imagePath: "assets/calce.jpg",
                      imageName: "calcetas",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    ClienteItem(
                      imagePath: "assets/produ.jpg",
                      imageName: "playeras",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    ClienteItem(
                      imagePath: "assets/produ2.jpg",
                      imageName: "otros",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Lista Productos",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "ver mas...",
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 225,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ProductoItem(
                      image: "assets/nike1.jpg",
                      name: "Nike1",
                      specialist: "tela",
                    ),
                    ProductoItem(
                      image: "assets/nike2.jpg",
                      name: "Nike2",
                      specialist: "tela",
                    ),
                    ProductoItem(
                      image: "assets/nike3.jpg",
                      name: "Nike3",
                      specialist: "tela",
                    ),
                    ProductoItem(
                      image: "assets/nike4.jpg",
                      name: "Nike4",
                      specialist: "tela",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
