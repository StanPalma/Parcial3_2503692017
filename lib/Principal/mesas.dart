import 'package:flutter/material.dart';
import 'package:parcial3/BD/bdmesas.dart';

class MesaOpc extends StatelessWidget {
  const MesaOpc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mesas'),
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

class MesaInsert extends StatelessWidget {
  MesaInsert({Key? key}) : super(key: key);
  final TextEditingController _numCom = TextEditingController();
  final TextEditingController _ubic = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mesero'),
      ),
      body: ListView(
        children: [
          TextField(
            controller: _numCom,
            decoration: const InputDecoration(
                labelText: "Número comensales",
                labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: _ubic,
            decoration: const InputDecoration(
                labelText: "Ubicación",
                labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(
            height: 20,
          ),
          
          RaisedButton(
            child: Text("Guardar"),
            onPressed: () {
              setMesas(_numCom.text, _ubic.text);
              getMesas();
            },
          ),
        ],
      ),
    );
  }
}

class MesaList extends StatelessWidget {
  final TextEditingController _idMesa = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mesas'),
      ),
      body: ListView(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: _idMesa,
            decoration: const InputDecoration(
                labelText: "ID Mesa",
                labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(
            height: 20,
          ),
          RaisedButton(
            child: const Text("Eliminar"),
            onPressed: () {
              delMesas(_idMesa.text);
              getMesas();
            },
          ),
          const SizedBox(
            height: 20,
          ),
          for (var i = 0; i < listMesa.length; i++)
            Card(
              child: ListTile(
                title: Text(
                  listMesa[i],
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

class MesaActu extends StatelessWidget {
  MesaActu({Key? key}) : super(key: key);
  final TextEditingController _idMas = TextEditingController();
  final TextEditingController _numCom= TextEditingController();
  final TextEditingController _ubic = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mesas'),
      ),
      body: ListView(
        children: [
          TextField(
            controller: _idMas,
            decoration: const InputDecoration(
                labelText: "ID Mesa",
                labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: _numCom,
            decoration: const InputDecoration(
                labelText: "Número Comensales",
                labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: _ubic,
            decoration: const InputDecoration(
                labelText: "Ubicación",
                labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(
            height: 20,
          ),
          RaisedButton(
            child: Text("Actualizar"),
            onPressed: () {
              updtMesas(_idMas.text, _numCom.text, _ubic.text);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          for (var i = 0; i < listMesa.length; i++)
            Card(
              child: ListTile(
                title: Text(
                  listMesa[i],
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
            .push(MaterialPageRoute(builder: (context) => MesaInsert()));
        getMesas();
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
            .push(MaterialPageRoute(builder: (context) => MesaList()));
        getMesas();
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
            .push(MaterialPageRoute(builder: (context) => MesaActu()));
        getMesas();
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: const Text(
        "Listar y actualizar",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ));
}
