import 'package:cloud_firestore/cloud_firestore.dart';

//* Collection GENERAL
CollectionReference collectionReference =
    FirebaseFirestore.instance.collection("clientes");

//**** SELECT Clientes */
void getClientes() async {
  // async para traer de forma asincrona los datos

  QuerySnapshot clientes = await collectionReference.get();
  if (clientes.docs.length != 0) {
    clientes.docs.forEach((doc) {
      print(doc.id);
    });
    /* for (var documentos in clientes.docs) {
      print(documentos.data()); // para imprimir en consola de depuración
      //users.add(documentos.data()); // Para agregar los registros al arreglo users.
    } */
  }
}

//**** INSERT Clientes */
void setClientes(nombre, apellido, obs) async {
  if (nombre != "" && apellido != "" && obs != "") {
    return collectionReference
        //.doc(((clientes.docs.length) + 1).toString())
        .add({'nombre': nombre, 'apellido': apellido, 'observaciones': obs})
        .then((value) => print("Registro agregado"))
        .catchError((error) => print("Fallo en insertar registro"));
  } else {
    print("Falta registros");
  }
}
