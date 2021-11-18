import 'package:desafios_aguias/api/cep_api.dart';
import 'package:desafios_aguias/custom/custom_theme.dart';
import 'package:flutter/material.dart';

class InicioScreen extends StatefulWidget {
  const InicioScreen({Key? key}) : super(key: key);

  @override
  _InicioScreenState createState() => _InicioScreenState();
}

class _InicioScreenState extends State<InicioScreen> {
  final TextEditingController _txCep = TextEditingController();
  final TextEditingController _txLogradouro = TextEditingController();
  final TextEditingController _txBairro = TextEditingController();
  final TextEditingController _txLocalidade = TextEditingController();
  final TextEditingController _txUf = TextEditingController();
  final TextEditingController _txIbge = TextEditingController();
  final TextEditingController _txDDD = TextEditingController();
  final TextEditingController _txSiafi = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Future<void> buscar() async {
      final dynamic json = await CepApi().getByCep(cep: _txCep.text);
      setState(() {
        _txLogradouro.text = json['logradouro']??'';
        _txBairro.text = json['bairro']??'';
        _txLocalidade.text = json['localidade']??'';
        _txUf.text = json['uf']??'';
        _txIbge.text = json['ibge']??'';
        _txDDD.text = json['ddd']??'';
        _txSiafi.text = json['siafi']??'';
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Desafio das Águias"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(5),
                child: TextField(
                  controller: _txCep,
                  keyboardType: TextInputType.number,
                  decoration: CustomTheme().meuInput('CEP'),
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.blue, fontSize: 15.0),
                ),
              )),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () => buscar(),
                child: const Text(
                  'Buscar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ]),
            Padding(
              padding: EdgeInsets.all(5),
              child: TextField(
                controller: _txLogradouro,
                keyboardType: TextInputType.number,
                decoration: CustomTheme().meuInput('Logradouro'),
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.blue, fontSize: 15.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: TextField(
                controller: _txBairro,
                keyboardType: TextInputType.number,
                decoration: CustomTheme().meuInput('Bairro'),
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.blue, fontSize: 15.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: TextField(
                controller: _txLocalidade,
                keyboardType: TextInputType.number,
                decoration: CustomTheme().meuInput('Localidade'),
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.blue, fontSize: 15.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: TextField(
                controller: _txUf,
                keyboardType: TextInputType.number,
                decoration: CustomTheme().meuInput('UF'),
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.blue, fontSize: 15.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: TextField(
                controller: _txIbge,
                keyboardType: TextInputType.number,
                decoration: CustomTheme().meuInput('IBGE'),
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.blue, fontSize: 15.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: TextField(
                controller: _txDDD,
                keyboardType: TextInputType.number,
                decoration: CustomTheme().meuInput('DDD'),
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.blue, fontSize: 15.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: TextField(
                controller: _txSiafi,
                keyboardType: TextInputType.number,
                decoration: CustomTheme().meuInput('SIAFI'),
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.blue, fontSize: 15.0),
              ),
            ),
            const Padding(
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
