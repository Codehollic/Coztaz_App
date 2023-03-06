import 'package:final_2/core/app_export.dart';
import 'package:final_2/presentation/attendance_overall_result_screen/models/attendance_overall_result_model.dart';

class AttendanceOverallResultController extends GetxController {
  Rx<AttendanceOverallResultModel> attendanceOverallResultModelObj =
      AttendanceOverallResultModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
