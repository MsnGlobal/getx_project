import 'package:get/get.dart';

class GetxScreeenController extends GetxController {
  // int counter = 0;
  ////Reactive programming
  RxInt counter = 0.obs;
  increment() {
    counter++;
    print('counter  increment---_$counter');
    // update();
  }
}
