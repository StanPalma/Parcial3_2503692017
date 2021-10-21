import 'package:cloud_firestore/cloud_firestore.dart';

//* Collection GENERAL
CollectionReference collectionReference =
    FirebaseFirestore.instance.collection("bebidas");

List listBeb = [];

//**** SELECT platillos */
void getBebidas() async {
  QuerySnapshot bebidas = await collectionReference.get();
  if (bebidas.docs.isNotEmpty) {
    listBeb.clear();
    for (var doc in bebidas.docs) {
      listBeb.add("ID Platillos: " +
          doc.id +
          " | Nombre bebida: " +
          doc["nombre"].toString() +
          " | Importe: " +
          doc["importe"].toString());
    }
  }
}

//**** INSERT platillos */
void setBebidas(nombre, importe) async {
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
void delBebidas(idBeb) async {
  return collectionReference
      .doc(idBeb)
      .delete()
      .then((value) => print("Registro eliminado"))
      .catchError((error) => print("Fallo en eliminar registro"));
}

//**** UPDATE platillos */
void updtBebidas(idBeb, nombre, importe) async {
  return collectionReference
      .doc(idBeb)
      .update({'nombre': nombre, 'importe': importe})
      .then((value) => print("Registro actualizado"))
      .catchError((error) => print("Fallo en actualizar registro"));
}
