import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../main.dart';

class HomePage extends StatelessWidget {
  
  const HomePage({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(title: Text("Pagina Inicial"),actions: [IconButton(onPressed: ()=>dados(), icon: Icon(Icons.refresh))],),
      body: ListView.builder(
        itemBuilder: (context, i)=> Text(lista.elementAt(i).toString()),
        itemCount: lista.length,
      )
      );
    
  }

 

}

var lista = [];
final List<String> listaUser = [];

Future dados() async {
  var mapDB = {};
  QuerySnapshot resultDB = await MyApp.db.collection("gymdata").get();
  resultDB.docs.forEach((element) {
    
      element.data().toString();
      
      });

  print(mapDB);

  listaUser.add("");

}
