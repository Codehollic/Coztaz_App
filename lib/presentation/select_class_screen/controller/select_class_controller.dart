import 'package:final_2/core/app_export.dart';
import 'package:final_2/presentation/select_class_screen/models/select_class_model.dart';
import 'package:final_2/core/constants/constants.dart';
class SelectClassController extends GetxController {
  Rx<SelectClassModel> selectClassModelObj = SelectClassModel().obs;
  @override
  void onReady() {
    super.onReady();
  }
  void incrementIndex(int index) {
    selectClassModelObj.value.selectclassItemList[n].index++;
  }
  @override
  void onClose() {
    super.onClose();
  }
}
