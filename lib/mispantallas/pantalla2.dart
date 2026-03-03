import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    // Definimos el color de fondo para usarlo en el Scaffold y en el AppBar
    const Color colorFondo = Color(0xFFF7BD4F); 

    return Scaffold(
      backgroundColor: colorFondo,
      appBar: AppBar(
        // 1. Color del AppBar igual al fondo
        backgroundColor: colorFondo,
        // 2. Quitamos la sombra para que se vea plano
        elevation: 0,
        // 3. Quitamos el logo y el texto (se dejan vacíos o se omite 'title')
        title: const Text(""), 
        // 4. Solo la flecha para regresar
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black, size: 30),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagen principal del carrito (Logo central)
            Image.network(
              "https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/refs/heads/main/logo.jpg",
              width: 280,
            ),
            const SizedBox(height: 80),
            // Botón para avanzar
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
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
