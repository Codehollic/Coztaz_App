import 'package:final_2/core/app_export.dart';
import 'package:final_2/presentation/schedule_for_today_screen/models/schedule_for_today_model.dart';

class ScheduleForTodayController extends GetxController {
  Rx<ScheduleForTodayModel> scheduleForTodayModelObj =
      ScheduleForTodayModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
