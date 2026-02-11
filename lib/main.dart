import 'package:flutter/material.dart';

void main() => runApp(AppMuebleria());

class AppMuebleria extends StatelessWidget {
  const AppMuebleria({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LosVendedores(),
    );
  }
} // Fin clase AppMuebleria

class LosVendedores extends StatelessWidget {
  const LosVendedores({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      // --- APPBAR ACTUALIZADO CON ICONO DE EMERGENCIA ---
      appBar: AppBar(
        title: const Text(
          "Muebleria Carrasco",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF3E2723), // Café amaderado
        centerTitle: true,
        leading: const Icon(Icons.bed, color: Colors.white),
        actions: [
          IconButton(
            icon: const Icon(Icons.build, color: Colors.white),
            onPressed: () {},
          ),
          // Nuevo icono de emergencia añadido aquí
          IconButton(
            icon: const Icon(Icons.warning, color: Colors.white), 
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.camera_alt, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),

      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _crearTarjetaMueble(
            'https://raw.githubusercontent.com/Carrasco07/Imagenes-para-Flutter-6to-I-fecha-11-feb-2026/refs/heads/main/vendedor1.jpg',
            'Elizabeth Galaviz',
            'Empleada del Mes',
          ),
          _crearTarjetaMueble(
            'https://raw.githubusercontent.com/Carrasco07/Imagenes-para-Flutter-6to-I-fecha-11-feb-2026/refs/heads/main/vendedor2.jpg',
            'Arturo Carrasco',
            'Vendedor',
          ),
          _crearTarjetaMueble(
            'https://raw.githubusercontent.com/Carrasco07/Imagenes-para-Flutter-6to-I-fecha-11-feb-2026/refs/heads/main/vendedor3.jpg',
            'Juan Perez',
            'Aprendiz',
          ),
          _crearTarjetaMueble(
            'https://raw.githubusercontent.com/Carrasco07/Imagenes-para-Flutter-6to-I-fecha-11-feb-2026/refs/heads/main/vendedor4.jpg',
            'Rufino Torres',
            'Vendedor',
          ),
        ],
      ),
    ); // Fin de Scaffold
  }
} // Fin clase LosVendedores

Widget _crearTarjetaMueble(String urlImagen, String titulo, String subtitulo) {
  return Card(
    color: const Color(0xFFD7CCC8), // Café clarito
    elevation: 6, // Sombreado
    margin: const EdgeInsets.only(bottom: 16),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    child: ListTile(
      leading: CircleAvatar(backgroundImage: NetworkImage(urlImagen)),
      title: Text(
        titulo,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(subtitulo, style: const TextStyle(color: Colors.black87)),
      trailing: const Icon(
        Icons.thumb_up,
        color: Color(0xFF000080), // Azul Marino
      ),
      onTap: () {
        // Acción al tocar la tarjeta
      },
    ),
  );
}
