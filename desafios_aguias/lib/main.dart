// ignore_for_file: prefer_const_constructors

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Desafio das Águias"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'CEP',
                    prefixIcon: Icon(
                      Icons.add_location,
                      color: Colors.blue,
                    ),
                    contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    disabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue, fontSize: 15.0),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {},
                child: Text(
                  'Buscar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ]),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Logradouro",
                labelStyle: TextStyle(color: Colors.blue),
                contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                disabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue, fontSize: 15.0),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Bairro",
                labelStyle: TextStyle(color: Colors.blue),
                contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                disabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue, fontSize: 15.0),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Localidade",
                labelStyle: TextStyle(color: Colors.blue),
                contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                disabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue, fontSize: 15.0),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "UF",
                labelStyle: TextStyle(color: Colors.blue),
                contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                disabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue, fontSize: 15.0),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "IBGE",
                labelStyle: TextStyle(color: Colors.blue),
                contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                disabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue, fontSize: 15.0),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "DDD",
                labelStyle: TextStyle(color: Colors.blue),
                contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                disabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue, fontSize: 15.0),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "SIAFI",
                labelStyle: TextStyle(color: Colors.blue),
                contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                disabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue, fontSize: 15.0),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Text(
                "Powered by Pedro",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blue, fontSize: 15.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
