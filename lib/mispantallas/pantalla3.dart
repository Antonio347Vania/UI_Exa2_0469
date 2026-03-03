import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Fondo naranja muy bajito como el dibujo
      backgroundColor: const Color(0xFFFFF3E0), 
      appBar: AppBar(
        leading: const Icon(Icons.menu, color: Colors.black, size: 30),
        title: const Text(
          "Soriana", 
          style: TextStyle(color: Colors.black, fontSize: 24)
        ),
        centerTitle: true,
        // Color amarillo sólido del logo
        backgroundColor: const Color(0xFFF7BD4F), 
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.network(
              "https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/logo.jpg",
              width: 40,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 40),
          // Banner Verde con Flechas laterales
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.arrow_back_ios, size: 35, color: Colors.black54),
              Container(
                width: 260,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color(0xFF99E299), // Verde claro del dibujo
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: const Text(
                  "Martes\n&\nmiercoles\nde\nfrutas y\nVerduras",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black, 
                    fontWeight: FontWeight.bold, 
                    fontSize: 18,
                    height: 1.2,
                  ),
                ),
              ),
              const Icon(Icons.arrow_forward_ios, size: 35, color: Colors.black54),
            ],
          ),
          const SizedBox(height: 60),
          // Fila de Productos con bordes negros marcados
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildProduct("1 Kilo\nZanahoria", "https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/Zanahoria.jpg"),
              _buildProduct("Pan", "https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/pan.jpg"),
              _buildProduct("1 kilo\nManzana", "https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/manzana%20roja.jpg"),
            ],
          ),
          const Spacer(),
          // BOTONES DE NAVEGACIÓN DE CELULAR (Abajo del todo)
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: Colors.black26, width: 1))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(Icons.menu, size: 30, color: Colors.black45), // El signo '='
                const Icon(Icons.circle_outlined, size: 30, color: Colors.black45), // El círculo 'O'
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new, size: 25, color: Colors.black45), // La flecha '<'
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _buildProduct(String name, String url) {
    return Column(
      children: [
        Container(
          width: 85,
          height: 85,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color(0xFFF5D6A7), // Color cremita de los cuadros del dibujo
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.black, width: 2),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(url, fit: BoxFit.cover),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          name, 
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)
        ),
      ],
    );
  }
}