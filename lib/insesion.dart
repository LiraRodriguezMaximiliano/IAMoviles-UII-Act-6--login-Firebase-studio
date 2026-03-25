import 'package:flutter/material.dart';
import 'registro.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.lightBlue[200], title: Text("Inicia Sesión")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: emailCtrl, decoration: InputDecoration(labelText: "Correo electrónico")),
            TextField(controller: passCtrl, decoration: InputDecoration(labelText: "Contraseña"), obscureText: true),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFD32F2F)),
              onPressed: () {
                if (localDB[emailCtrl.text] == passCtrl.text) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Bienvenido a LALA")));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Credenciales incorrectas")));
                }
              },
              child: Text("Iniciar Sesión", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen())),
              child: Text("¿No tienes cuenta? Regístrate", style: TextStyle(color: Color(0xFF800020))),
            )
          ],
        ),
      ),
    );
  }
}