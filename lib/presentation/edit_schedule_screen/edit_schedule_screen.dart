import '../edit_schedule_screen/widgets/editschedule_item_widget.dart';
import 'models/editschedule_item_model.dart';
import 'package:final_2/core/app_export.dart';
import 'package:final_2/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:final_2/presentation/setup_schedule_screen/controller/setup_schedule_controller.dart';

class EditScheduleScreen extends GetWidget<SetupScheduleController> {
  var n = 0;

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
                              width: double.maxFinite,
                              padding: getPadding(
                                  left: 91, top: 20, right: 91, bottom: 10),
                              decoration: AppDecoration
                                  .gradientIndigoA20001Indigo40001
                                  .copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.customBorderBL35),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImg1,
                                        height: getVerticalSize(49),
                                        width: getHorizontalSize(50),
                                        margin: getMargin(left: 61)),
                                    Container(
                                        height: getVerticalSize(64),
                                        width: getHorizontalSize(171),
                                        margin: getMargin(top: 1, bottom: 26),
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                  alignment:
                                                  Alignment.bottomCenter,
                                                  child: Text("lbl_schedule".tr,
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtLexendMedium38)),
                                              Align(
                                                  alignment:
                                                  Alignment.topCenter,
                                                  child: Text("lbl_edit".tr,
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtLexendMedium20))
                                            ]))
                                  ]))),
                      Expanded(

                          child: Obx(() => ListView.builder(
                            itemCount: controller.itemCount.value,
                            itemBuilder: ((context, index) {
                              return
                                ListTile(
                                  title: GestureDetector(
                                    onTap: ()=> Get.toNamed(AppRoutes.ClassDetailes,arguments: index),
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






                      CustomButton(
                          height: getVerticalSize(36),
                          text: "lbl_next".tr,
                          margin: getMargin(
                              left: 21, top: 19, right: 20, bottom: 5),
                          onTap: navigatetoeditschedule)
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(36),
                text: "lbl_back".tr,
                margin: getMargin(left: 21, right: 20, bottom: 34),
                variant: ButtonVariant.OutlineIndigoA100_1,
                fontStyle: ButtonFontStyle.InterRegular12IndigoA100,
                onTap: onBackPressed)));
  }

  navigatetoeditschedule() {

    Get.toNamed(AppRoutes.editScheduleTwoScreen);

  }

  onBackPressed() {
    Get.toNamed(AppRoutes.mainScreen);
  }
}

