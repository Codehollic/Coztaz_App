import 'package:final_2/core/app_export.dart';
import 'package:final_2/presentation/about_screen/models/about_model.dart';

class AboutController extends GetxController {
  Rx<AboutModel> aboutModelObj = AboutModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
