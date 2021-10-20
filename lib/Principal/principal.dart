import 'package:flutter/material.dart';
import 'package:parcial3/BD/controller.dart';

class Cliente extends StatelessWidget {
  Cliente({Key? key}) : super(key: key);
  TextEditingController _nomb = TextEditingController();
  TextEditingController _apell = TextEditingController();
  TextEditingController _observ = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cliente'),
      ),
      body: ListView(
        children: [
          TextField(
            controller: _nomb,
            decoration: InputDecoration(
                hintText: "Tu Nombre",
                labelText: "Nombre",
                labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: _apell,
            decoration: InputDecoration(
                hintText: "Tu Apellido",
                labelText: "Apellido",
                labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: _observ,
            decoration: InputDecoration(
                labelText: "Observaciones",
                labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
            keyboardType: TextInputType.multiline,
            minLines: 2,
            maxLines: 3,
          ),
          const SizedBox(
            height: 20,
          ),
          RaisedButton(
            child: Text("Guardar"),
            onPressed: () {
              getClientes();
              setClientes(_nomb.text, _apell.text, _observ.text);
              /* print(_nomb.text);
              print(_apell.text);
              print(_observ.text); */
            },
          ),
        ],
      ),
    );
  }
}

class Mesero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mesero'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {},
        ),
      ),
    );
  }
}

class Mesa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mesa'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {},
        ),
      ),
    );
  }
}

class Platillo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Platillo'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {},
        ),
      ),
    );
  }
}

class Bebida extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bebida'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {},
        ),
      ),
    );
  }
}
