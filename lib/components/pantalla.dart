import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/calculadoracontroller.dart';

class Pantalla extends StatefulWidget {
  const Pantalla({super.key});

  @override
  State<Pantalla> createState() => _PantallaState();
}

class _PantallaState extends State<Pantalla> {
  @override
  Widget build(BuildContext context) {
    var cal = context.watch<controllerCalculator>();
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child:
            Center(child: Text(cal.pantalla, style: TextStyle(fontSize: 45))),
      ),
    );
  }
}

class PantallaResults extends StatefulWidget {
  const PantallaResults({super.key});

  @override
  State<PantallaResults> createState() => _PantallaResultsState();
}

class _PantallaResultsState extends State<PantallaResults> {
  @override
  Widget build(BuildContext context) {
    var cal = context.watch<controllerCalculator>();
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child:
            Center(child: Text(cal.resultado, style: TextStyle(fontSize: 45))),
      ),
    );
  }
}

