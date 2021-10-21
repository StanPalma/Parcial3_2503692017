import 'package:flutter/material.dart';
import 'package:parcial3/BD/bdmeseros.dart';

class MeserOpc extends StatelessWidget {
  const MeserOpc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meseros'),
      ),
      body: Center(
          child: ListView(
        children: <Widget>[
          const SizedBox(
            height: 50,
          ),
          btnInsert(context),
          const SizedBox(
            height: 10,
          ),
          btnListar(context),
          const SizedBox(
            height: 10,
          ),
          btnActualizar(context),
          const SizedBox(
            height: 10,
          ),
        ],
      )),
    );
  }
}

class MeseInsert extends StatelessWidget {
  MeseInsert({Key? key}) : super(key: key);
  final TextEditingController _nomb = TextEditingController();
  final TextEditingController _apell1 = TextEditingController();
  final TextEditingController _apell2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mesero'),
      ),
      body: ListView(
        children: [
          TextField(
            controller: _nomb,
            decoration: const InputDecoration(
                hintText: "Tu Nombre",
                labelText: "Nombre",
                labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: _apell1,
            decoration: const InputDecoration(
                labelText: "Primer apellido",
                labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: _apell2,
            decoration: const InputDecoration(
                labelText: "Segundo apellido",
                labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(
            height: 20,
          ),
          RaisedButton(
            child: Text("Guardar"),
            onPressed: () {
              setMeseros(_nomb.text, _apell1.text, _apell2.text);
              getMeseros();
            },
          ),
        ],
      ),
    );
  }
}

class MeseList extends StatelessWidget {
  final TextEditingController _idMese = TextEditingController();
  int tamanio = listMes.length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mesero'),
      ),
      body: ListView(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: _idMese,
            decoration: const InputDecoration(
                labelText: "ID Mesero",
                labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(
            height: 20,
          ),
          RaisedButton(
            child: const Text("Eliminar"),
            onPressed: () {
              delMeseros(_idMese.text);
              getMeseros();
            },
          ),
          const SizedBox(
            height: 20,
          ),
          for (var i = 0; i < listMes.length; i++)
            Card(
              child: ListTile(
                title: Text(
                  listMes[i],
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              color: Colors.green,
            ),
        ],
        //child: ListTile(
        //title: Text(listC[1]),
        //
      ),
    );
  }
}

class MeseActu extends StatelessWidget {
  MeseActu({Key? key}) : super(key: key);
  final TextEditingController _idMes = TextEditingController();
  final TextEditingController _nomb = TextEditingController();
  final TextEditingController _apell1 = TextEditingController();
  final TextEditingController _apell2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mesero'),
      ),
      body: ListView(
        children: [
          TextField(
            controller: _idMes,
            decoration: const InputDecoration(
                hintText: "ID mesero",
                labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: _nomb,
            decoration: const InputDecoration(
                labelText: "Nombre",
                labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: _apell1,
            decoration: const InputDecoration(
                labelText: "Primer apellido",
                labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: _apell2,
            decoration: const InputDecoration(
                labelText: "Segundo apellido",
                labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(
            height: 20,
          ),
          RaisedButton(
            child: Text("Actualizar"),
            onPressed: () {
              updtMesero(_idMes.text, _nomb.text, _apell1.text, _apell2.text);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          for (var i = 0; i < listMes.length; i++)
            Card(
              child: ListTile(
                title: Text(
                  listMes[i],
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              color: Colors.green,
            ),
        ],
      ),
    );
  }
}

Widget btnInsert(contexto) {
  return MaterialButton(
      height: 40.0,
      minWidth: 200.0,
      color: Colors.greenAccent,
      //padding: EdgeInsets.symmetric(horizontal: 75, vertical: 10),
      onPressed: () {
        Navigator.of(contexto)
            .push(MaterialPageRoute(builder: (context) => MeseInsert()));
        getMeseros();
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: const Text(
        "Insertar",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ));
}

Widget btnListar(contexto) {
  return MaterialButton(
      height: 40.0,
      minWidth: 200.0,
      color: Colors.greenAccent,
      //padding: EdgeInsets.symmetric(horizontal: 75, vertical: 10),
      onPressed: () {
        Navigator.of(contexto)
            .push(MaterialPageRoute(builder: (context) => MeseList()));
        getMeseros();
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: const Text(
        "Listar y eliminar",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ));
}

Widget btnActualizar(contexto) {
  return MaterialButton(
      height: 40.0,
      minWidth: 200.0,
      color: Colors.greenAccent,
      onPressed: () {
        Navigator.of(contexto)
            .push(MaterialPageRoute(builder: (context) => MeseActu()));
        getMeseros();
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: const Text(
        "Listar y actualizar",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ));
}
