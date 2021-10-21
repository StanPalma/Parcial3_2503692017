import 'package:cloud_firestore/cloud_firestore.dart';

//* Collection GENERAL
CollectionReference collectionReference =
    FirebaseFirestore.instance.collection("meseros");

List listMes = [];

//**** SELECT Meseros */
void getMeseros() async {
  QuerySnapshot meseros = await collectionReference.get();
  if (meseros.docs.isNotEmpty) {
    listMes.clear();
    for (var doc in meseros.docs) {
      listMes.add("ID Mesero: " +
          doc.id +
          " | Nombre: " +
          doc["nombre"] +
          " " +
          doc["apellido1"]);
    }
  }
}

//**** INSERT Meseros */
void setMeseros(nombre, apellido1, apellido2) async {
  if (nombre != "" && apellido1 != "" && apellido2 != "") {
    return collectionReference
        //.doc(((clientes.docs.length) + 1).toString())
        .add({'nombre': nombre, 'apellido1': apellido1, 'apellido2': apellido2})
        .then((value) => print("Registro agregado"))
        .catchError((error) => print("Fallo en insertar registro"));
  } else {
    print("Falta registros");
  }
}

//**** DELETE */
void delMeseros(idMesero) async {
  return collectionReference
      .doc(idMesero)
      .delete()
      .then((value) => print("Registro eliminado"))
      .catchError((error) => print("Fallo en eliminar registro"));
}

//**** UPDATE */
void updtMesero(idMesero, nombre, apellido1, apellido2) async {
  return collectionReference
      .doc(idMesero)
      .update(
          {'nombre': nombre, 'apellido1': apellido1, 'apellido2': apellido2})
      .then((value) => print("Registro actualizado"))
      .catchError((error) => print("Fallo en actualizar registro"));
}
