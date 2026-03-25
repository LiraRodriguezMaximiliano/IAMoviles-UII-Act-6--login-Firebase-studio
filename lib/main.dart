import 'package:flutter/material.dart';
import 'insesion.dart';
import 'registro.dart';

void main() => runApp(MaterialApp(home: LALAHome(), debugShowCheckedModeBanner: false));

class LALAHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("LALA"),
        backgroundColor: Colors.lightBlue[200],
        leading: Icon(Icons.business, color: Colors.blue[800]),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.store, size: 40, color: Colors.lightBlue[200]),
                  SizedBox(width: 10),
                  Text("LALA", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 40),
              // Botón Iniciar Sesión
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFD32F2F),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen())),
                child: Text("Iniciar Sesión", style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 20),
              // Botón Registrarse
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFD32F2F),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen())),
                child: Text("Registrarse", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Color(0xFF800020), // Color Guinda
        child: Center(child: Text("© 2026 LALA - Maximiliano Lira", style: TextStyle(color: Colors.white))),
      ),
    );
  }
}