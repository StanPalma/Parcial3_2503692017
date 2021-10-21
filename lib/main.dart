import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:parcial3/BD/bdmesas.dart';
import 'package:parcial3/BD/bdmeseros.dart';
import 'package:parcial3/BD/controller.dart';
import 'package:parcial3/Principal/mesas.dart';
import 'package:parcial3/Principal/platillos.dart';
import 'Principal/meseros.dart';
import 'Principal/principal.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp().then((value) {
    runApp(const Parcial3());
    getClientes();
    getMeseros();
    getMesas();
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
          child: ListView(
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
          //btnBebida(context),
        ],
      )),
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
            .push(MaterialPageRoute(builder: (context) => const ClieOpc()));
        // getClientes();
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
            .push(MaterialPageRoute(builder: (context) => const MeserOpc()));
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: const Text(
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
            .push(MaterialPageRoute(builder: (context) => const MesaOpc()));
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: const Text(
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
            .push(MaterialPageRoute(builder: (context) => PlatOpc()));
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Text(
        "Platillo",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ));
}

/*
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
} */

class CRUDApp extends StatefulWidget {
  CRUDApp({Key? key}) : super(key: key);

  @override
  _CRUDAppState createState() => _CRUDAppState();
}

class _CRUDAppState extends State<CRUDApp> {
  void initState() {
    super.initState();
    //setClientes('Bladimir', 'Palma', 'Buen cliente');
    //getClientes();
    //getMeseros();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
