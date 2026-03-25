import 'package:flutter/material.dart';
import 'insesion.dart';

// Simulación de LocalStorage sin dependencias externas
Map<String, String> localDB = {}; 

class RegisterScreen extends StatelessWidget {
  final TextEditingController userCtrl = TextEditingController();
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passCtrl = TextEditingController();
  final TextEditingController confirmCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.lightBlue[200], title: Text("Registro")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(controller: userCtrl, decoration: InputDecoration(labelText: "Nombre de usuario")),
              TextField(controller: emailCtrl, decoration: InputDecoration(labelText: "Correo electrónico")),
              TextField(controller: passCtrl, decoration: InputDecoration(labelText: "Contraseña"), obscureText: true),
              TextField(controller: confirmCtrl, decoration: InputDecoration(labelText: "Confirmar contraseña"), obscureText: true),
              SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFD32F2F)),
                onPressed: () {
                  if(passCtrl.text == confirmCtrl.text && emailCtrl.text.isNotEmpty) {
                    localDB[emailCtrl.text] = passCtrl.text; // Guardado en memoria
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Usuario registrado con éxito")));
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  }
                },
                child: Text("Registrarse", style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen())),
                child: Text("¿Ya tienes cuenta? Inicia Sesión", style: TextStyle(color: Color(0xFF800020))),
              )
            ],
          ),
        ),
      ),
    );
  }
}