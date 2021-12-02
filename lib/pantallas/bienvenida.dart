import 'package:flutter/material.dart';
import 'ensalada.dart';
import 'cabecera.dart';

class Bienvenida extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset(
              'assets/img/Logo.png',
              height: 200.0,
            ),
            Text(
              "Bienvenido al restaurante",
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              "Es un gusto atenderle",
              style: Theme.of(context).textTheme.headline1,
            ),
            MaterialButton(
              color: Theme.of(context).primaryColor,
              elevation: 10.0,
              minWidth: 170.0,
              height: 50.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0)),
              child: Text(
                "Ingresar",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return new ensaladas();
                  }),
                );
              },
            ),
            /*MaterialButton(
              //Momenataneo para probar como va quedando la cabecera
              color: Theme.of(context).primaryColor,
              elevation: 10.0,
              minWidth: 17.0,
              height: 15.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0)),
              child: Text(
                "Cabecera",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return cabeceraPagina();
                  }),
                );
              },
            )*/
          ],
        ),
      ),
    );
  }
}
