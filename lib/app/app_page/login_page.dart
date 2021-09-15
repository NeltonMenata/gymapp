
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);
   //var controller = Get.put(Controller());
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
              colors: [Colors.blue, Colors.black45]
          )),
          child: ListView(
            
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                  Container(
                  alignment: Alignment.center,              
                  margin: EdgeInsets.symmetric(vertical: 90),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      color: Colors.amber,
                      width: 120,
                      height: 120,
                      child: Image.asset("assets/img/gym_icon.png",
                        fit: BoxFit.cover,
                    
                      
                      ),
                    ),
                  )
                  
                  ),

                  Form(
                    
                    child: Column(
                      
                      children: [
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
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Senha',
                            icon: Icon(Icons.vpn_key_outlined),
                            border: OutlineInputBorder()),
                        )
                      ],)),
                      SizedBox(height: 10,),
                      GestureDetector(
                        onTap: (){print("Tocado");},
                        child: Text("Esqueceu a senha?",
                         textAlign: TextAlign.end,
                         style: TextStyle(fontSize: 15, color: Colors.amber),)
                        
                        ),
                      SizedBox(height:30),
                      
                      
                        ElevatedButton(
                          onPressed: (){
                            Get.toNamed("/home");
                          }, 
                          child: Text("Entrar",)),
                          SizedBox(width: 10,),
                        Divider(color: Colors.amber,),
                        Text("Se ainda não és inscrito, clique no botão abaixo!"),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.grey)),
                          onPressed: (){Get.toNamed("/cadastro");}, 
                          child: Text("Cadastrar-se")) 
            ],),
        ),),
    );
  }
}