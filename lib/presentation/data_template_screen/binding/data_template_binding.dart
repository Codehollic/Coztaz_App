import '../controller/data_template_controller.dart';
import 'package:get/get.dart';

class DataTemplateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DataTemplateController());
  }
}
