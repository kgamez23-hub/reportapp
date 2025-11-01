import 'package:flutter/material.dart';
import 'custom_button.dart'; 
import 'login_screen.dart';
import 'register_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "hola",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
        
            // login
            BotonPersonalizado(
              texto: 'Login',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              colorFondo: Color.fromRGBO(44, 5, 112, 1),
              colorTexto: Colors.white,
              paddingHorizontal: 40,
              paddingVertical: 7,
            ),
            const SizedBox(height: 16),

            // Sign Up
            BotonPersonalizado(
              texto: 'Sign Up',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterScreen(),
                  ),
                );
              },
              colorFondo: Colors.white,
              colorTexto: Color.fromRGBO(44, 5, 112, 1),
              colorBorde: Color.fromRGBO(44, 5, 112, 1),
              paddingHorizontal: 32,
              paddingVertical: 5,
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}