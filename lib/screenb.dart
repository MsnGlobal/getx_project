import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'gext_screen_controller.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.find<GetxScreeenController>();
    final width = Get.width;
    final h = Get.height;
    final s = Get.size;
    return Scaffold(
      appBar: AppBar(title: const Text('ScreenB')),
      body: Center(
        child: Text('recived values-----------------${_controller.counter}'),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {

            Get.snackbar('Allah hu akbar', 'Time to offer prayer',
                snackPosition: SnackPosition.BOTTOM);
          }),
    );
  }
}
