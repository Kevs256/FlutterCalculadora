import 'package:flutter/cupertino.dart';

class controllerCalculator extends ChangeNotifier {
  var pantalla = "";
  var numeroUno = "0";
  var numeroDos = "";
  var operacion = "";
  var resultado = "";

  void calcular(String letra, String tipo) {
    if (tipo == "pantalla") {
      cosasPantalla(letra);
    }
    if (tipo == "numero") {
      cosasNumero(letra);
    }
    if (tipo == "operacion") {
      cosasOperacion(letra);
    }
    if(tipo == "igual"){
      pantalla=resultado;
      operacion="";
      numeroUno=resultado;
      numeroDos="";
      resultado="";
    }

    notifyListeners();
  }

  void cosasPantalla(String letra) {
    if (letra == "CE") {
      pantalla = "";
      numeroUno = "";
      numeroDos = "";
      operacion = "";
      resultado = "";
    }
    if (letra == "AC") {
      var operaciones = <String>['+', '-', 'x', '/', '%'];
      if (operaciones.contains(pantalla.substring(pantalla.length - 1))) {
        pantalla = pantalla.substring(0, pantalla.length - 1);
        operacion = "";
      } else {
        pantalla = pantalla.substring(0, pantalla.length - 1);
        numeroUno=pantalla;
      }
    }
    operaciones();
  }

  void cosasNumero(String numero) {
    if (operacion != "" && numeroUno != "") {
      if (numeroDos == "") {
        pantalla = "";
        numeroDos=numero;
        pantalla = numeroDos;
      } else {
        pantalla = pantalla + numero;
        numeroDos = pantalla;
      }
      print(numeroDos);
      operaciones();
    } else {
      pantalla = pantalla + numero;
    }
  }

  void cosasOperacion(String letra) {

    if (pantalla == "") {
      print("no hay nada");
    } else {
      if(operacion != "" && numeroUno !="" && numeroDos !=""){
        pantalla =resultado;
        numeroDos="";
        numeroUno=pantalla;
      }
      if (operacion != "") {
        pantalla = pantalla.substring(0, pantalla.length - 1);
        operacion = letra;
        pantalla = pantalla + operacion;
      } else {
        numeroUno = pantalla;
        operacion = letra;
        pantalla = pantalla + operacion;
      }
    }
  }

  void operaciones() {
    switch (operacion) {
      case "+":
        var suma = double.parse(numeroUno) + double.parse(numeroDos);
        resultado = suma.toString();
        //numeroUno=resultado;
        break;
      case "-":
        var resta = double.parse(numeroUno) - double.parse(numeroDos);
        resultado = resta.toString();
        break;
      case "x":
        var multi = double.parse(numeroUno) * double.parse(numeroDos);
        resultado = multi.toString();
        break;
      case "/":
        var divi = double.parse(numeroUno) / double.parse(numeroDos);
        resultado = divi.toString();
        break;
      case "%":
        var porcen = (double.parse(numeroUno) * double.parse(numeroDos)) / 100;
        resultado = porcen.toString();
        break;
      case "=":
        pantalla = resultado;
        break;
      default:
    }
  }
}
