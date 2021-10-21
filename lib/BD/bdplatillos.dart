import 'package:cloud_firestore/cloud_firestore.dart';

//* Collection GENERAL
CollectionReference collectionReference =
    FirebaseFirestore.instance.collection("platillos");

List listPlat = [];

//**** SELECT platillos */
void getPlatillos() async {
  QuerySnapshot platillos = await collectionReference.get();
  if (platillos.docs.isNotEmpty) {
    listPlat.clear();
    for (var doc in platillos.docs) {
      listPlat.add("ID Platillos: " +
          doc.id +
          " | Nombre platillo: " +
          doc["nombre"].toString() +
          " | Importe: " +
          doc["importe"].toString());
    }
  }
}

//**** INSERT platillos */
void setPlatillos(nombre, importe) async {
  if (nombre != "" && importe != null) {
    return collectionReference
        //.doc(((clientes.docs.length) + 1).toString())
        .add({'nombre': nombre, 'importe': importe})
        .then((value) => print("Registro agregado"))
        .catchError((error) => print("Fallo en insertar registro"));
  } else {
    print("Falta registros");
  }
}

//**** DELETE platillos */
void delPlatillos(idPlat) async {
  return collectionReference
      .doc(idPlat)
      .delete()
      .then((value) => print("Registro eliminado"))
      .catchError((error) => print("Fallo en eliminar registro"));
}

//**** UPDATE platillos */
void updtPlatillos(idPlat, nombre, importe) async {
  return collectionReference
      .doc(idPlat)
      .update({'nombre': nombre, 'importe': importe})
      .then((value) => print("Registro actualizado"))
      .catchError((error) => print("Fallo en actualizar registro"));
}
