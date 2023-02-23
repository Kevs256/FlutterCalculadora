import 'package:estudio_uno/components/pantalla.dart';
import 'package:flutter/material.dart';
import '../components/boton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Pantalla()],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [PantallaResults()],
            ),
            Column(
              children: [
                Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Boton(tipo: "pantalla",letra: "AC", colores: Color.fromARGB(255, 255, 145, 55)),
                Boton(tipo: "pantalla",letra: "CE", colores: Color.fromARGB(255, 255, 145, 55)),
                Boton(tipo: "operacion",letra: "%", colores: Color.fromARGB(255, 90, 86, 83)),
                Boton(tipo: "operacion",letra: "/", colores: Color.fromARGB(255, 90, 86, 83))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Boton(tipo: "numero",letra: "7", colores: Color.fromARGB(255, 90, 86, 83)),
                Boton(tipo: "numero" ,letra: "8", colores: Color.fromARGB(255, 90, 86, 83)),
                Boton(tipo: "numero",letra: "9", colores: Color.fromARGB(255, 90, 86, 83)),
                Boton(tipo: "operacion",letra: "x", colores: Color.fromARGB(255, 90, 86, 83))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Boton(tipo: "numero",letra: "4", colores: Color.fromARGB(255, 90, 86, 83)),
                Boton(tipo: "numero",letra: "5", colores: Color.fromARGB(255, 90, 86, 83)),
                Boton(tipo: "numero",letra: "6", colores: Color.fromARGB(255, 90, 86, 83)),
                Boton(tipo: "operacion",letra: "-", colores: Color.fromARGB(255, 90, 86, 83))
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Boton(
                            tipo: "numero",
                              letra: "1",
                              colores: Color.fromARGB(255, 90, 86, 83)),
                          Boton(
                            tipo: "numero",
                              letra: "2",
                              colores: Color.fromARGB(255, 90, 86, 83)),
                          Boton(
                            tipo: "numero",
                              letra: "3",
                              colores: Color.fromARGB(255, 90, 86, 83)),
                        ],
                      ),
                      Row(
                        children: [
                          Boton(
                            tipo: "numero",
                              letra: "0",
                              colores: Color.fromARGB(255, 90, 86, 83)),
                          Boton(
                            tipo: "numero",
                              letra: ".",
                              colores: Color.fromARGB(255, 90, 86, 83)),
                          Boton(
                            tipo: "igual",
                              letra: "=",
                              colores: Color.fromARGB(255, 90, 86, 83)),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: Boton(
                          tipo: "operacion",
                            letra: "+",
                            colores: Color.fromARGB(255, 90, 86, 83)),
                      )
                    ],
                  ),
                )
              ],
            )
              ],
            )
            
          ],
        )));
  }
}

//colores: Color(0x0000009b)