import 'package:final_2/core/app_export.dart';
import 'package:final_2/presentation/schedule_screen/models/schedule_model.dart';

class ScheduleController extends GetxController {
  Rx<ScheduleModel> scheduleModelObj = ScheduleModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
