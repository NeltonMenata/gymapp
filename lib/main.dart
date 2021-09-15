import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym_app/app/app_page/cadastro_page.dart';
import 'package:gym_app/app/app_page/home_page.dart';
import 'app/app_page/login_page.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
  
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {

  static FirebaseFirestore db = FirebaseFirestore.instance;
  
  @override
  Widget build(BuildContext context) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: LoginPage(),
        getPages:[
          GetPage(name: "/", page: () => LoginPage()),
          GetPage(name: "/home", page: () => HomePage()),
          GetPage(name: "/cadastro", page: ()=> CadastroPage())
        ]
      );
  }
}
