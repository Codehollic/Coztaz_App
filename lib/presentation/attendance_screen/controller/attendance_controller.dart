import 'package:final_2/core/app_export.dart';
import 'package:final_2/presentation/attendance_screen/models/attendance_model.dart';

class AttendanceController extends GetxController {
  Rx<AttendanceModel> attendanceModelObj = AttendanceModel().obs;

  RxBool checkbox = false.obs;

  RxBool checkbox1 = false.obs;

  RxBool checkbox2 = false.obs;

  RxBool checkbox3 = false.obs;

  RxBool checkbox4 = false.obs;

  RxBool checkbox5 = false.obs;

  RxBool checkbox6 = false.obs;

  RxBool checkbox7 = false.obs;

  RxBool checkbox8 = false.obs;

  RxBool checkbox9 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
