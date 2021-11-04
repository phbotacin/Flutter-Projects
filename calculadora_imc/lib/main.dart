// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  String infoText = "Informe os dados!!";

  void _resetFields(){
    setState(() {
      weightController.text = "";
      heightController.text = "";
      infoText = "Informe os dados!!";
    });
  }

  void calculate(){
    setState(() {
      double weight = double.parse(weightController.text);
      double height = double.parse(heightController.text) / 100;
      double imc = weight / (height * height);

      if(imc < 16.9){
        infoText = "Muito abaixo do peso! (${imc.toStringAsPrecision(4)})";
      }else if(imc > 16.9 && imc < 18.5){
        infoText = "Abaixo do peso! (${imc.toStringAsPrecision(4)})";
      }else if(imc > 18.4 && imc < 25.0){
        infoText = "Peso normal! (${imc.toStringAsPrecision(4)})";
      }else if(imc > 24.9 && imc < 30.0){
        infoText = "Acima do Peso! (${imc.toStringAsPrecision(4)})";
      }else if(imc > 30.0 && imc < 35.0){
        infoText = "Obesidade Grau  (${imc.toStringAsPrecision(4)})1!";
      }else if(imc > 35.0 && imc < 40.0){
        infoText = "Obesidade Grau 2! (${imc.toStringAsPrecision(4)})";
      }else if(imc > 40.0){
        infoText = "Obesidade Grau 3! (${imc.toStringAsPrecision(4)})";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de IMC"),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              _resetFields();
            },
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              Icons.person_outline,
              size: 120.0,
              color: Colors.green,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Peso (KG)",
                labelStyle: TextStyle(color: Colors.green),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 25.0),
              controller: weightController,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Altura (CM)",
                labelStyle: TextStyle(color: Colors.green),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 25.0),
              controller: heightController,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
              child: Container(
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {
                    calculate();
                  },
                  child: Text(
                    "Calcular",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  color: Colors.green,
                ),
              ),
            ),
            Text(
              infoText,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 30.0),
            ),
          ],
        ),
      ),
    );
  }
}
