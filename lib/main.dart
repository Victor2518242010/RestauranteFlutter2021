import 'package:flutter/material.dart';
import 'package:restaurante/pantallas/bienvenida.dart';

void main() {
  runApp(Restaurante());
}

class Restaurante extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App Menu",
      home: Bienvenida(),
      theme: ThemeData(
        primaryColor: Color(0xFF0FA6C2),
        secondaryHeaderColor: Color(0xFF030047),
        highlightColor: Color(0xFFB7B7B2),
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF828282),
          ),
        ),
      ),
    );
  }
}
