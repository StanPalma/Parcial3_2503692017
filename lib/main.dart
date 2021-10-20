import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'BD/controller.dart';
import 'Principal/principal.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp().then((value) {
    runApp(const Parcial3());
  });
}

class Parcial3 extends StatelessWidget {
  const Parcial3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menú',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Inicio(),
      //home: CRUDApp(),
    );
  }
}

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          const SizedBox(
            height: 50,
          ),
          btnCliente(context),
          const SizedBox(
            height: 10,
          ),
          btnMesero(context),
          const SizedBox(
            height: 10,
          ),
          btnMesa(context),
          const SizedBox(
            height: 10,
          ),
          btnPlatillo(context),
          const SizedBox(
            height: 10,
          ),
          btnBebida(context),
        ],
      )
          /* child: RaisedButton(
          child: Text('Clientes'),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Mesero()));
          },
        ), */
          ),
    );
  }
}

Widget btnCliente(contexto) {
  return MaterialButton(
      height: 40.0,
      minWidth: 200.0,
      color: Colors.greenAccent,
      //padding: EdgeInsets.symmetric(horizontal: 75, vertical: 10),
      onPressed: () {
        Navigator.of(contexto)
            .push(MaterialPageRoute(builder: (context) => Cliente()));
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: const Text(
        "Cliente",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ));
}

Widget btnMesero(contexto) {
  return MaterialButton(
      height: 40.0,
      minWidth: 200.0,
      color: Colors.greenAccent,
      //padding: EdgeInsets.symmetric(horizontal: 75, vertical: 10),
      onPressed: () {
        Navigator.of(contexto)
            .push(MaterialPageRoute(builder: (context) => Mesero()));
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Text(
        "Mesero",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ));
}

Widget btnMesa(contexto) {
  return MaterialButton(
      height: 40.0,
      minWidth: 200.0,
      color: Colors.greenAccent,
      //padding: EdgeInsets.symmetric(horizontal: 75, vertical: 10),
      onPressed: () {
        Navigator.of(contexto)
            .push(MaterialPageRoute(builder: (context) => Mesa()));
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Text(
        "Mesa",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ));
}

Widget btnPlatillo(contexto) {
  return MaterialButton(
      height: 40.0,
      minWidth: 200.0,
      color: Colors.greenAccent,
      //padding: EdgeInsets.symmetric(horizontal: 75, vertical: 10),
      onPressed: () {
        Navigator.of(contexto)
            .push(MaterialPageRoute(builder: (context) => Platillo()));
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Text(
        "Platillo",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ));
}

Widget btnBebida(contexto) {
  return MaterialButton(
      height: 40.0,
      minWidth: 200.0,
      color: Colors.greenAccent,
      //padding: EdgeInsets.symmetric(horizontal: 75, vertical: 10),
      onPressed: () {
        Navigator.of(contexto)
            .push(MaterialPageRoute(builder: (context) => Bebida()));
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Text(
        "Bebida",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ));
}

class CRUDApp extends StatefulWidget {
  CRUDApp({Key? key}) : super(key: key);

  @override
  _CRUDAppState createState() => _CRUDAppState();
}

class _CRUDAppState extends State<CRUDApp> {
  void initState() {
    super.initState();
    //setClientes('Bladimir', 'Palma', 'Buen cliente');
    getClientes();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
