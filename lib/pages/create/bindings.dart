import 'package:get/get.dart';
import 'package:sqflite_materi/pages/create/controller.dart';

class CreateBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateController());
  }
}
