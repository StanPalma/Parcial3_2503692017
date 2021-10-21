import 'package:cloud_firestore/cloud_firestore.dart';

//* Collection GENERAL
CollectionReference collectionReference =
    FirebaseFirestore.instance.collection("mesas");

List listMesa = [];

//**** SELECT mesas */
void getMesas() async {
  QuerySnapshot mesas = await collectionReference.get();
  if (mesas.docs.isNotEmpty) {
    listMesa.clear();
    for (var doc in mesas.docs) {
      listMesa.add("ID Mesas: " +
          doc.id +
          " | Numero comensales: " +
          doc["num_comensales"].toString() +
          " | Ubicación: " +
          doc["ubicacion"]);
    }
  }
}

//**** INSERT mesas */
void setMesas(num_comensales, ubicacion) async {
  if (num_comensales != null && ubicacion != "") {
    return collectionReference
        //.doc(((clientes.docs.length) + 1).toString())
        .add({'num_comensales': num_comensales, 'ubicacion': ubicacion})
        .then((value) => print("Registro agregado"))
        .catchError((error) => print("Fallo en insertar registro"));
  } else {
    print("Falta registros");
  }
}

//**** DELETE */
void delMesas(idMesa) async {
  return collectionReference
      .doc(idMesa)
      .delete()
      .then((value) => print("Registro eliminado"))
      .catchError((error) => print("Fallo en eliminar registro"));
}

//**** UPDATE */
void updtMesas(idMesa, num_comensales, ubicacion) async {
  return collectionReference
      .doc(idMesa)
      .update({'num_comensales': num_comensales, 'ubicacion': ubicacion})
      .then((value) => print("Registro actualizado"))
      .catchError((error) => print("Fallo en actualizar registro"));
}
