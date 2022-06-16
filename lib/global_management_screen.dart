import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_project/screenb.dart';

import 'gext_screen_controller.dart';

class GetXDemoScreen extends StatelessWidget {
  final GetxScreeenController _controller = Get.put(GetxScreeenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GETX page j'),
      ),
      body: Center(
          // ////getBuilder
          // child: GetBuilder<GetxScreeenController>(
          //     init: GetxScreeenController(),
          //     builder: (controller) {
          //       return Text('data:${controller.counter}');
          //     })),

          //     ////getx
          //     child: GetX<GetxScreeenController>(builder: (controller) {
          //   return Text('data:${controller.counter}');
          // })),

          ////obx
          child: Obx(() {
        return Text('data:${_controller.counter}');
      })),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            _controller.increment();
          }),
    );
  }
}

class GetViewScreen extends GetView<GetxScreeenController> {
  @override
  Widget build(BuildContext context) {
    Get.put(GetxScreeenController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: Center(
          // ////getBuilder
          // child: GetBuilder<GetxScreeenController>(
          //     init: GetxScreeenController(),
          //     builder: (controller) {
          //       return Text('data:${controller.counter}');
          //     })),

          //     ////getx
          //     child: GetX<GetxScreeenController>(builder: (controller) {
          //   return Text('data:${controller.counter}');
          // })),

          ////obx
          child: Column(
        children: [
          Obx(() {
            return Text('data:${controller.counter}');
          }),
          const SizedBox(height: 100),
          ElevatedButton(
              onPressed: () {
                Get.to(const ScreenB());
                //Get.to(ScreenB());
              },
              child: const Text('Go to next'))
        ],
      )),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            controller.increment();
          }),
    );
  }
}
