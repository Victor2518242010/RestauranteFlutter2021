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
              "Nombre",
              style: Theme.of(context).textTheme.headline1,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlue,
              ),
              cursorColor: Colors.lightBlue,
              decoration: InputDecoration(
                hintText: "Escriba su nombre",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                  borderSide: BorderSide(
                    color: Colors.blueGrey,
                    width: 3,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                  borderSide: BorderSide(
                    color: Colors.blueGrey,
                    width: 3,
                  ),
                ),
                fillColor: Colors.black12,
                filled: true,
              ),
            ),
            Text(
              "contrasena",
              style: Theme.of(context).textTheme.headline1,
            ),
            TextField(
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlue,
              ),
              cursorColor: Colors.lightBlue,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Escriba su contrasena",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                  borderSide: BorderSide(
                    color: Colors.blueGrey,
                    width: 3,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                  borderSide: BorderSide(
                    color: Colors.blueGrey,
                    width: 3,
                  ),
                ),
                fillColor: Colors.black12,
                filled: true,
              ),
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
