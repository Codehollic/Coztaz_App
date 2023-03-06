import '../setting_screen/widgets/setting_item_widget.dart';
import 'controller/setting_controller.dart';
import 'models/setting_item_model.dart';
import 'package:final_2/core/app_export.dart';
import 'package:final_2/widgets/custom_button.dart';
import 'package:final_2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SettingScreen extends GetWidget<SettingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                            Container(
                                width: double.maxFinite,
                                child: Container(
                                    width: double.maxFinite,
                                    padding: getPadding(
                                        left: 11, top: 3, right: 11, bottom: 3),
                                    decoration: AppDecoration.fillIndigo40002
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .customBorderBL35),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          CustomButton(
                                              height: getVerticalSize(35),
                                              width: getHorizontalSize(69),
                                              text: "lbl_back2".tr,
                                              margin: getMargin(top: 26),
                                              variant:
                                                  ButtonVariant.FillIndigo600,
                                              shape: ButtonShape.RoundedBorder8,
                                              fontStyle: ButtonFontStyle
                                                  .LexendMedium14,
                                              onTap: onBackPressed),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: getPadding(top: 12),
                                                  child: Text("lbl_setting".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtLexendMedium45)))
                                        ]))),
                            Padding(
                                padding:
                                    getPadding(left: 20, top: 28, right: 9),
                                child: Obx(() => ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(12));
                                    },
                                    itemCount: controller.settingModelObj.value
                                        .settingItemList.length,
                                    itemBuilder: (context, index) {
                                      SettingItemModel model = controller
                                          .settingModelObj
                                          .value
                                          .settingItemList[index];
                                      return SettingItemWidget(model);
                                    }))),
                            Container(
                                height: getVerticalSize(78),
                                width: getHorizontalSize(331),
                                margin: getMargin(top: 12),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 112, bottom: 15),
                                              child: Text("lbl_settings".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtLexendMedium24))),
                                      CustomTextFormField(
                                          width: getHorizontalSize(331),
                                          focusNode: FocusNode(),
                                          controller: controller
                                              .groupFiftyOneController,
                                          hintText: "lbl_faq".tr,
                                          shape:
                                              TextFormFieldShape.CircleBorder39,
                                          fontStyle: TextFormFieldFontStyle
                                              .LexendMedium14,
                                          alignment: Alignment.center)
                                    ])),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: controller.feedbackbuttonController,
                                hintText: "lbl_feedback".tr,
                                margin: getMargin(left: 20, top: 12, right: 9),
                                shape: TextFormFieldShape.CircleBorder39,
                                fontStyle:
                                    TextFormFieldFontStyle.LexendMedium14),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: controller.aboutbuttonController,
                                hintText: "lbl_about".tr,
                                margin: getMargin(
                                    left: 20, top: 12, right: 9, bottom: 246),
                                shape: TextFormFieldShape.CircleBorder39,
                                fontStyle:
                                    TextFormFieldFontStyle.LexendMedium14,
                                textInputAction: TextInputAction.done)
                          ])))
                    ]))));
  }

  onBackPressed() {
    Get.back();
  }
}
