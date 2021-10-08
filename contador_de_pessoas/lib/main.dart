import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(//MaterialApp é o tipo do programa
      title: "Contador de Pessoas",
      home: Home())); //Função para executar o programa
}


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _people = 0;
  String _infoText = "Bem Vindo ao Restaurate Casarão";

  void _changePeople(int delta){
    setState(() {
      _people += delta;
      if(_people >= 30){
        _infoText = "Restaurante Cheio!!";
      }else if(_people < 0){
        _infoText  = "Restaurante Vazio!!";
      }else{
        _infoText = "Restaurante com Vagas!!";
      }
    });
  }

  @override
  Widget build(BuildContext context) { //Função Build chamada quando quer mudar alguma coisa no layout
    return Stack(
      children: [
        Image.asset(
          "images/restaurant.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Pessoas: $_people",
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text(
                      "+1",
                      style: TextStyle(fontSize: 40.0, color: Colors.white),
                    ),
                    onPressed: () {
                      _changePeople(1);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text(
                      "-1",
                      style: TextStyle(fontSize: 40.0, color: Colors.white),
                    ),
                    onPressed: () {
                      _changePeople(-1);
                    },
                  ),
                ),
              ],
            ),
            Text(
              _infoText,
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0),
            ),
          ],
        ),
      ],
    );
  }
}
