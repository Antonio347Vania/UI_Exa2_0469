import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7BD4F), // Amarillo sólido logo
      appBar: AppBar(
        title: const Text("Cargando..."),
        backgroundColor: Colors.orange,
        actions: const [Icon(Icons.refresh), Icon(Icons.more_vert)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/logo.jpg",
              width: 250,
            ),
            const SizedBox(height: 40),
            const CircularProgressIndicator(color: Colors.black),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/pantalla3'),
              child: const Text("ENTRAR A TIENDA"),
            ),
          ],
        ),
      ),
    );
  }
}