import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
class Controller extends GetxController{
  
  var _num = 0;
  var _theme = false;
  var showPsw = false.obs;
  var title = "Nelton Menata".obs;
  var subtitle = "neltonmenataditec@gmail.com".obs;
  var txtTitle = TextEditingController(text: "Nelton Menata");
  var txtSubtitle = TextEditingController(text: "Subtitulo");
  int get num{return _num;}
  
  void txtAction(){
    title.value = txtTitle.text ;
    subtitle.value = txtSubtitle.text;
  }  
  void aumentarNum(){
    _num ++;
    update();
  }

  void diminuirNum(){
    _num--;
    update();
  }

  void alterarTheme(){
    _theme = !_theme;
    update();
  }

  bool get theme{return _theme;}
}

