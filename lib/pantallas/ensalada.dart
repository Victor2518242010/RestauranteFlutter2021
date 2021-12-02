//import 'dart:html';

import 'package:flutter/material.dart';
import 'carnes.dart';

class Ensaladas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: ensaladas(),
    );
  }
}

class ensaladas extends StatefulWidget {
  @override
  _ensaladasState createState() => _ensaladasState();
}

class _ensaladasState extends State<ensaladas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: AssetImage("assets/img/Logo.png"),
                            //fit: BoxFit.cover),
                            fit: BoxFit.contain),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(80),
                          bottomRight: Radius.circular(80),
                          //topLeft: Radius.circular(400),
                          //topRight: Radius.circular(400)
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /* SizedBox(
                          height: 2,
                        ), */
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(
                                      context); //El boton permite volver a la pantalla anterior
                                },
                                icon: Icon(
                                  Icons
                                      .arrow_back, //Para volver a la pantalla anterior
                                  color: Colors.grey,
                                )),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    //El boton avanza hacia carnes
                                    context,
                                    MaterialPageRoute(
                                        builder: (contex) =>
                                            carnes() //para ir hacia carnes
                                        ),
                                  );
                                },
                                icon: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.grey,
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 200,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Recomendación de hoy",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                height: 0.5,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        placesWidget("ensalada1", "Ensalada Rusa"),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Ensaladas",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                height: 0.5,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Column(
                            children: [
                              dishWidget("ensalada1", "Ensalada Rusa",
                                  "Deliciosa ensalada con remolacha"),
                              dishWidget("ensalada2", "Ensalada Griega",
                                  "Un platillo del olimpo"),
                              dishWidget("ensalada3", "Ensalada Mixta",
                                  "Es muy saludable"),
                              dishWidget("ensalada4", "Ensalada de papa",
                                  "Sabrosa y nutritiva"),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row dishWidget(String img, String name, String description) {
    return Row(
      // width: 120,
      // child: Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/img/$img.jpg"))),
        ),
        Column(
          children: [
            SizedBox(
              width: 20,
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$name",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "$description",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              width: 20,
            )
          ],
        ),
        InkWell(
          onTap: () {},
          child: MaterialButton(
            color: Theme.of(context).primaryColor,
            elevation: 10.0,
            minWidth: 60.0,
            height: 50.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0)),
            child: Text(
              "Ingresar",
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return carnes();
                }),
              );
            },
            hoverElevation: 30.0,
            //highlightElevation: 45.0
            highlightColor: Colors.lightBlueAccent,
          ),
        ),
      ],
      //),
    );
  }

  Row placesWidget(String img, String name) {
    return Row(
      children: [
        Container(
          child: SizedBox(
            width: 20,
          ),
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/img/$img.jpg"))),
        ),
        Container(
          child: SizedBox(
            width: 20,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$name",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  Icon(
                    Icons.stars_rounded,
                    size: 20,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.stars_rounded,
                    size: 20,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.stars_rounded,
                    size: 20,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.stars_rounded,
                    size: 20,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.stars_rounded,
                    size: 20,
                    color: Colors.green,
                  ),
                ],
              ),
              Text(
                "Un gusto al  paladar",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
        InkWell(
          onTap: () {},
          child: /*Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              color: Theme.of(context).primaryColor,
            ),
            child: Text(
              "Elegir",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w700),
            ),
          ),*/
              MaterialButton(
            color: Theme.of(context).primaryColor,
            elevation: 10.0,
            minWidth: 120.0,
            height: 50.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0)),
            child: Text(
              "Ingresar",
              style: TextStyle(color: Colors.white, fontSize: 15.0),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return new carnes();
                }),
              );
            },
            hoverElevation: 30.0,
            //highlightElevation: 45.0
            highlightColor: Colors.lightBlueAccent,
          ),
        ),
        Container(
          child: (SizedBox(
            width: 20,
          )),
        ),
      ],
    );
  }
}
