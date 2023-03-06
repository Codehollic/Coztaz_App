import '../select_class_screen/widgets/selectclass_item_widget.dart';
import 'controller/select_class_controller.dart';
import 'models/selectclass_item_model.dart';
import 'package:final_2/core/app_export.dart';
import 'package:final_2/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:final_2/presentation/setup_schedule_screen/controller/setup_schedule_controller.dart';
class SelectClassScreen extends GetWidget<SetupScheduleController> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              padding: getPadding(
                                  left: 71, top: 30, right: 71, bottom: 30),
                              decoration: AppDecoration
                                  .gradientIndigoA20001Indigo40001
                                  .copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.customBorderBL35),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 34),
                                        child: Text("lbl_select_class".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtLexendMedium38))
                                  ]))),




                         Expanded(
                          child:
                          Obx(() => ListView.builder(
                            itemCount: controller.itemCount.value,
                            itemBuilder: ((context, index) {
                              return
                                ListTile(
                                  title: GestureDetector(
                                    onTap: ()=> Get.toNamed(AppRoutes.attendanceScreen,),
                                    child: Text(
                                      controller.classes.value[index].classname!,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),

                                subtitle: Text(controller.classes.value[index].subject!, style: TextStyle(fontSize: 16)),


                                  trailing: IconButton(
                                  icon: Icon(Icons.delete, color: Colors.red),
                                  onPressed: () => controller.removeClasses(index),
                                ),
                                contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  side: BorderSide(color: Colors.grey.shade300),
                                ),
                                tileColor: Colors.white,
                                selectedTileColor: Colors.grey.shade100,
                              );
                            }),
                          )),
                        ),


                    ])





            ),

            bottomNavigationBar: CustomButton(
                height: getVerticalSize(36),
                onTap: navigatetomaine,
                text: "lbl_back".tr,
                margin: getMargin(left: 20, right: 21, bottom: 34),
                variant: ButtonVariant.OutlineIndigoA100_1,
                fontStyle: ButtonFontStyle.InterRegular12IndigoA100)));
  }

  navigatetoattendance() {
    Get.toNamed(AppRoutes.attendanceScreen);
  }
  navigatetomaine() {
    Get.toNamed(AppRoutes.dataTemplateScreen);
  }

}



