import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final C = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Obx(
          () => Text(
            "${C.count}",
            style: TextStyle(fontSize: 25),
          ),
        )),
        floatingActionButton: FloatingActionButton(onPressed: () => C.add()),
      ),
    );
  }
}

class CountController extends GetxController {
  var count = 0.obs;
  void add() => count + 1;
}
