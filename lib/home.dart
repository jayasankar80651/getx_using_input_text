import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:package_getx_using_inputtext/getx.dart';

class GetxUsingTextInput extends StatefulWidget {
  GetxUsingTextInput({super.key});

  @override
  State<GetxUsingTextInput> createState() => _GetxUsingTextInputState();
}

class _GetxUsingTextInputState extends State<GetxUsingTextInput> {
  final InputController controller=Get.put(InputController());
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title:Text("GEtx using Text Input") ,),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              onChanged:(text){
                controller.ChangeText(text);
              } ,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(height:40),
            Obx(()=>
            Text("you typed:${controller.typeTex.value}",style: TextStyle(fontSize: 25),))
          ],
        ),
      )
    );
  }
}