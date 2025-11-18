
import 'package:get/get.dart';

class InputController extends GetxController{
  var typeTex="".obs;
  void ChangeText(String val){
    typeTex.value=val;
  }
}