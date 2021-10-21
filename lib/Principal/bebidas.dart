import 'package:flutter/material.dart';
import 'package:parcial3/BD/bdbebidas.dart';

class BebOpc extends StatelessWidget {
  const BebOpc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bebidas'),
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

class BebInsert extends StatelessWidget {
  BebInsert({Key? key}) : super(key: key);
  final TextEditingController _nombre = TextEditingController();
  final TextEditingController _importe = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bebida'),
      ),
      body: ListView(
        children: [
          TextField(
            controller: _nombre,
            decoration: const InputDecoration(
                labelText: "Nombre",
                labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: _importe,
            decoration: const InputDecoration(
                labelText: "Importe",
                labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(
            height: 20,
          ),
          RaisedButton(
            child: Text("Guardar"),
            onPressed: () {
              setBebidas(_nombre.text, _importe.text);
              getBebidas();
            },
          ),
        ],
      ),
    );
  }
}

class BebList extends StatelessWidget {
  final TextEditingController _idBebi = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bebida'),
      ),
      body: ListView(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: _idBebi,
            decoration: const InputDecoration(
                labelText: "ID Bebida",
                labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(
            height: 20,
          ),
          RaisedButton(
            child: const Text("Eliminar"),
            onPressed: () {
              delBebidas(_idBebi.text);
              getBebidas();
            },
          ),
          const SizedBox(
            height: 20,
          ),
          for (var i = 0; i < listBeb.length; i++)
            Card(
              child: ListTile(
                title: Text(
                  listBeb[i],
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

class BebActu extends StatelessWidget {
  BebActu({Key? key}) : super(key: key);
  final TextEditingController _idPlat = TextEditingController();
  final TextEditingController _nombre = TextEditingController();
  final TextEditingController _importe = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bebida'),
      ),
      body: ListView(
        children: [
          TextField(
            controller: _idPlat,
            decoration: const InputDecoration(
                labelText: "ID Bebida",
                labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: _nombre,
            decoration: const InputDecoration(
                labelText: "Nombre",
                labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: _importe,
            decoration: const InputDecoration(
                labelText: "Importe",
                labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(
            height: 20,
          ),
          RaisedButton(
            child: Text("Actualizar"),
            onPressed: () {
              updtBebidas(_idPlat.text, _nombre.text, _importe.text);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          for (var i = 0; i < listBeb.length; i++)
            Card(
              child: ListTile(
                title: Text(
                  listBeb[i],
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
            .push(MaterialPageRoute(builder: (context) => BebInsert()));
        getBebidas();
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
            .push(MaterialPageRoute(builder: (context) => BebList()));
        getBebidas();
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
            .push(MaterialPageRoute(builder: (context) => BebActu()));
        getBebidas();
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: const Text(
        "Listar y actualizar",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ));
}
