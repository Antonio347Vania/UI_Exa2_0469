import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Fondo azul sólido como el dibujo
      backgroundColor: const Color(0xFF3A91D0), 
      appBar: AppBar(
        title: const Text("Tu Nombre Apellido - 6to I"), 
        backgroundColor: const Color(0xFF1E88E5),
        elevation: 0,
        actions: const [
          Icon(Icons.signal_cellular_4_bar, size: 18),
          SizedBox(width: 8),
          Icon(Icons.battery_full, size: 18),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // 1. Widget de Clima (Rectángulo azul claro con borde blanco)
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color(0xFF81D4FA),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.wb_sunny_rounded, color: Colors.yellow, size: 45),
                    Text("16°", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("C 21° - 7°", style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("C 19° - 6°", style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("C 22° - 6°", style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),

              // 2. Barra de Búsqueda Google (Blanca redondeada)
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.black12),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Text("G", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red)),
                      SizedBox(width: 10),
                      Expanded(child: Divider(color: Colors.black26, thickness: 1, indent: 5, endIndent: 5)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),

              // 3. Fila de Aplicaciones y Carpeta
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // App Soriana (Icono que navega)
                  _buildSingleApp(
                    context, 
                    Icons.shopping_cart, 
                    const Color(0xFFF7BD4F), 
                    nav: true
                  ),
                  
                  // App Blanca (Icono Q)
                  _buildSingleApp(context, Icons.search, Colors.white),

                  // EL CUADRITO DE APLICACIONES (Carpeta blanca)
                  _buildCarpetaApps(),
                ],
              ),
              
              const SizedBox(height: 40),
              
              // Widget de "6to Regular" que aparece abajo
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  color: const Color(0xFFB39DDB), // Color morado bajito
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: const Text(
                  "6to Regular", 
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget para aplicaciones individuales
  Widget _buildSingleApp(BuildContext context, IconData icon, Color bg, {bool nav = false}) {
    return GestureDetector(
      onTap: () => nav ? Navigator.pushNamed(context, '/pantalla2') : null,
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black, width: 1.5),
        ),
        child: Icon(icon, size: 40, color: bg == Colors.white ? Colors.black : Colors.black87),
      ),
    );
  }

  // EL CUADRITO DE APLICACIONES (Carpeta con mini iconos)
  Widget _buildCarpetaApps() {
    return Container(
      width: 75,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black, width: 1.5),
      ),
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          _miniIcon(Icons.facebook, Colors.blue),
          _miniIcon(Icons.camera_alt, Colors.green),
          _miniIcon(Icons.play_arrow, Colors.red),
          _miniIcon(Icons.message, Colors.orange),
          _miniIcon(Icons.image, Colors.purple),
          _miniIcon(Icons.phone, Colors.blueAccent),
        ],
      ),
    );
  }

  Widget _miniIcon(IconData icon, Color color) {
    return Icon(icon, size: 18, color: color);
  }
}