import 'package:flutter/material.dart';

class Cliente extends StatelessWidget {
  const Cliente({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cliente'),
      ),
      body: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
                hintText: "Tu Nombre",
                labelText: "Nombre",
                labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(
            height: 30,
          ),
          const TextField(
            decoration: InputDecoration(
                hintText: "Tu Apellido",
                labelText: "Apellido",
                labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(
            height: 30,
          ),
          const TextField(
            decoration: InputDecoration(
                labelText: "Observaciones",
                labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
            keyboardType: TextInputType.multiline,
            minLines: 2,
            maxLines: 3,
          ),
          const SizedBox(
            height: 40,
          ),
          RaisedButton(child: Text("Guardar"),onPressed: () {

          },),
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
