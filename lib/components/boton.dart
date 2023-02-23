import 'package:estudio_uno/components/pantalla.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/calculadoracontroller.dart';
class Boton extends StatelessWidget {
  Boton({super.key, required String this.letra, required Color this.colores, required String this.tipo});

  String letra;
  Color colores;
  String tipo;

  @override
  Widget build(BuildContext context) {
    var cal = context.watch<controllerCalculator>();
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: ElevatedButton(onPressed: () {  
          cal.calcular(letra,tipo);
          print(
            "pantalla: " + cal.pantalla+ "|numeroUno: " + cal.numeroUno + "|numeroDOs: " + cal.numeroDos + "|operation: " + cal.operacion + "|resultado: " +cal.resultado);
        },
        style: ElevatedButton.styleFrom(
          primary: colores
        ),
        child: Text(letra),
        ),
      ),
    );
  }
}


//Color.fromARGB(255, 124, 30, 133)