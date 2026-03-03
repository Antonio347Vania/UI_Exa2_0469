import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Color amarillo sólido de fondo como en tu dibujo
      backgroundColor: const Color(0xFFF7BD4F), 
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagen principal del carrito (Logo grande)
            Image.network(
              "https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/logo.jpg",
              width: 280,
            ),
            const SizedBox(height: 60),
            // Botón para avanzar a la siguiente pantalla
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: const BorderSide(color: Colors.black, width: 2),
                ),
              ),
              onPressed: () => Navigator.pushNamed(context, '/pantalla3'),
              child: const Text(
                "ENTRAR A TIENDA",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
