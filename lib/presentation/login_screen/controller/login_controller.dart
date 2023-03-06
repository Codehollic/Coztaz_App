import 'package:final_2/core/app_export.dart';
import 'package:final_2/presentation/login_screen/models/login_model.dart';

class LoginController extends GetxController {
  Rx<LoginModel> loginModelObj = LoginModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
