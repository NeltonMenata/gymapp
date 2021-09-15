
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym_app/app/app_controller/app_controller.dart';

// ignore: must_be_immutable
class CadastroPage extends StatelessWidget{
  var controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: Container(
          padding: EdgeInsets.only(top: 35, left: 10, right: 10),
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.black45, Colors.blue]
          )),
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 100.0, top: 30),
              child: Text("Cadastro", 
                style: TextStyle(
                  fontSize: 30, 
                    fontWeight: FontWeight.bold,),
                textAlign: TextAlign.center,),
            ),
              Form( 
                    child: Obx(()=>Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            labelText: 'Nome de Usuario',
                            icon: Icon(Icons.account_circle),
                            border: OutlineInputBorder()),
                        ),
                        SizedBox(height: 20,),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            icon: Icon(Icons.email),
                            border: OutlineInputBorder()),
                        ),
                        SizedBox(height: 20,),
                        TextFormField(
                          obscuringCharacter: "*",
                          obscureText: !controller.showPsw.value,
                          decoration: InputDecoration(
                            labelText: 'Senha',
                            icon: Icon(Icons.vpn_key_outlined),
                            border: OutlineInputBorder()),
                        ),
                        SizedBox(height: 20,),
                        (controller.showPsw.value)?Container():TextFormField(
                          obscuringCharacter: "*",
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Repita a senha',
                            icon: Icon(Icons.vpn_key_outlined),
                            border: OutlineInputBorder()),
                        ),
                        SizedBox(height: 10,),
                        Row(children: [
                          Obx(()=>Checkbox(
                            value: controller.showPsw.value, 
                            onChanged: (value){
                              controller.showPsw.value = !controller.showPsw.value;
                              })),
                          Text("Mostrar Senha")
                        ],),
                        ElevatedButton(
                          onPressed: (){}, child: Text("Salvar Cadastro"))
                      ],)
                      )
                      ),
          ],),
        ),
    )  
    ); 
  }
}