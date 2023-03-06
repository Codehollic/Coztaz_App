import 'controller/attendance_controller.dart';
import 'package:final_2/core/app_export.dart';
import 'package:final_2/widgets/custom_button.dart';
import 'package:final_2/widgets/custom_checkbox.dart';
import 'package:flutter/material.dart';

class AttendanceScreen extends GetWidget<AttendanceController> {
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
                      Expanded(
                          child: SingleChildScrollView(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                            Container(
                                height: getVerticalSize(229),
                                width: double.maxFinite,
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              decoration:
                                                  AppDecoration.fillWhiteA700,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                        width: double.maxFinite,
                                                        margin:
                                                            getMargin(top: 172),
                                                        padding: getPadding(
                                                            top: 14,
                                                            bottom: 14),
                                                        decoration:
                                                            AppDecoration
                                                                .outlineGray600,
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              Text(
                                                                  "lbl_students"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRobotoRomanBold22
                                                                      .copyWith(
                                                                          letterSpacing:
                                                                              getHorizontalSize(0.1))),
                                                              Text(
                                                                  "lbl_attendance"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRobotoRomanBold22
                                                                      .copyWith(
                                                                          letterSpacing:
                                                                              getHorizontalSize(0.1)))
                                                            ]))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                              padding: getPadding(
                                                  left: 20,
                                                  top: 23,
                                                  right: 20,
                                                  bottom: 23),
                                              decoration: AppDecoration
                                                  .gradientIndigoA20001Indigo400011
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .customBorderBL35),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(left: 7),
                                                        child: Text(
                                                            "lbl_class_1".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtLexendSemiBold54)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 7,
                                                            top: 2,
                                                            bottom: 5),
                                                        child: Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          bottom:
                                                                              1),
                                                                  child: Text(
                                                                      "lbl_ooad2"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtLexendSemiBold20)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              3,
                                                                          top:
                                                                              1),
                                                                  child: Text(
                                                                      "lbl_it"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtLexendSemiBold20)),
                                                              Spacer(),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              6,
                                                                          bottom:
                                                                              2),
                                                                  child: Text(
                                                                      "lbl_room_7"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtLexendSemiBold13WhiteA70099))
                                                            ]))
                                                  ])))
                                    ])),
                            Divider(color: ColorConstant.indigo40001),
            SizedBox( height: 450,
              child: ListView(
                  scrollDirection: Axis.vertical, // set scrolling direction to horizontal
                  children: [


                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding:
                                          getPadding(left: 37, top: 7),
                                      child: Row(children: [
                                        Container(
                                            width: getHorizontalSize(96),
                                            child: Text(
                                                "msg_harris_bin_abid_bscs_f19_m_84"
                                                    .tr,
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle.txtRobotoMedium14
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.1)))),
                                        Obx(() => CustomCheckbox(
                                            text: controller.checkbox.value ? "lbl_present".tr : "lbl_absent".tr,
                                            iconSize: getHorizontalSize(18),
                                            value: controller.checkbox.value,
                                            margin: getMargin(
                                                left: 91, top: 8, bottom: 8),
                                            variant:
                                                CheckboxVariant.FillWhiteA700,
                                            fontStyle:
                                                CheckboxFontStyle.LexendRegular17,
                                            onChange: (value) {
                                              controller.checkbox.value = value;
                                            }))
                                      ]))),
                              Padding(
                                  padding: getPadding(top: 7),
                                  child:
                                      Divider(color: ColorConstant.indigo40001)),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding:
                                          getPadding(left: 37, top: 6),
                                      child: Row(children: [
                                        Container(
                                            width: getHorizontalSize(96),
                                            child: Text(
                                                "msg_harris_bin_abid_bscs_f19_m_84"
                                                    .tr,
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle.txtRobotoMedium14
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.1)))),
                                        Obx(() => CustomCheckbox(
                                            text: controller.checkbox1.value ? "lbl_present".tr : "lbl_absent".tr,
                                            iconSize: getHorizontalSize(18),
                                            value: controller.checkbox1.value,
                                            margin: getMargin(
                                                left: 91, top: 8, bottom: 8),
                                            variant:
                                                CheckboxVariant.FillWhiteA700,
                                            fontStyle:
                                                CheckboxFontStyle.LexendRegular17,
                                            onChange: (value) {
                                              controller.checkbox1.value = value;
                                            }))
                                      ]))),
                              Padding(
                                  padding: getPadding(top: 7),
                                  child:
                                      Divider(color: ColorConstant.indigo40001)),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding:
                                          getPadding(left: 37, top: 6),
                                      child: Row(children: [
                                        Container(
                                            width: getHorizontalSize(96),
                                            child: Text(
                                                "msg_harris_bin_abid_bscs_f19_m_84"
                                                    .tr,
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle.txtRobotoMedium14
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.1)))),
                                        Obx(() => CustomCheckbox(
                                            text: controller.checkbox2.value ? "lbl_present".tr : "lbl_absent".tr,                                          iconSize: getHorizontalSize(18),
                                            value: controller.checkbox2.value,
                                            margin: getMargin(
                                                left: 91, top: 8, bottom: 8),
                                            variant:
                                                CheckboxVariant.FillWhiteA700,
                                            fontStyle:
                                                CheckboxFontStyle.LexendRegular17,
                                            onChange: (value) {
                                              controller.checkbox2.value = value;
                                            }))
                                      ]))),
                              Padding(
                                  padding: getPadding(top: 7),
                                  child:
                                      Divider(color: ColorConstant.indigo40001)),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding:
                                          getPadding(left: 37, top: 6),
                                      child: Row(children: [
                                        Container(
                                            width: getHorizontalSize(96),
                                            child: Text(
                                                "msg_harris_bin_abid_bscs_f19_m_84"
                                                    .tr,
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle.txtRobotoMedium14
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.1)))),
                                        Obx(() => CustomCheckbox(
                                            text: controller.checkbox3.value ? "lbl_present".tr : "lbl_absent".tr,
                                            iconSize: getHorizontalSize(18),
                                            value: controller.checkbox3.value,
                                            margin: getMargin(
                                                left: 91, top: 8, bottom: 8),
                                            variant:
                                                CheckboxVariant.FillWhiteA700,
                                            fontStyle:
                                                CheckboxFontStyle.LexendRegular17,
                                            onChange: (value) {
                                              controller.checkbox3.value = value;
                                            }))
                                      ]))),
                              Padding(
                                  padding: getPadding(top: 7),
                                  child:
                                      Divider(color: ColorConstant.indigo40001)),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding:
                                          getPadding(left: 37, top: 6),
                                      child: Row(children: [
                                        Container(
                                            width: getHorizontalSize(96),
                                            child: Text(
                                                "msg_harris_bin_abid_bscs_f19_m_84"
                                                    .tr,
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle.txtRobotoMedium14
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.1)))),
                                        Obx(() => CustomCheckbox(
                                            text: controller.checkbox4.value ? "lbl_present".tr : "lbl_absent".tr,
                                            iconSize: getHorizontalSize(18),
                                            value: controller.checkbox4.value,
                                            margin: getMargin(
                                                left: 91, top: 8, bottom: 8),
                                            variant:
                                                CheckboxVariant.FillWhiteA700,
                                            fontStyle:
                                                CheckboxFontStyle.LexendRegular17,
                                            onChange: (value) {
                                              controller.checkbox4.value = value;
                                            }))
                                      ]))),
                              Padding(
                                  padding: getPadding(top: 7),
                                  child:
                                      Divider(color: ColorConstant.indigo40001)),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding:
                                          getPadding(left: 37, top: 6),
                                      child: Row(children: [
                                        Container(
                                            width: getHorizontalSize(96),
                                            child: Text(
                                                "msg_harris_bin_abid_bscs_f19_m_84"
                                                    .tr,
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle.txtRobotoMedium14
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.1)))),
                                        Obx(() => CustomCheckbox(
                                            text: controller.checkbox5.value ? "lbl_present".tr : "lbl_absent".tr,
                                            iconSize: getHorizontalSize(18),
                                            value: controller.checkbox5.value,
                                            margin: getMargin(
                                                left: 91, top: 8, bottom: 8),
                                            variant:
                                                CheckboxVariant.FillWhiteA700,
                                            fontStyle:
                                                CheckboxFontStyle.LexendRegular17,
                                            onChange: (value) {
                                              controller.checkbox5.value = value;
                                            }))
                                      ]))),
                              Padding(
                                  padding: getPadding(top: 7),
                                  child:
                                      Divider(color: ColorConstant.indigo40001)),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding:
                                          getPadding(left: 37, top: 6),
                                      child: Row(children: [
                                        Container(
                                            width: getHorizontalSize(96),
                                            child: Text(
                                                "msg_harris_bin_abid_bscs_f19_m_84"
                                                    .tr,
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle.txtRobotoMedium14
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.1)))),
                                        Obx(() => CustomCheckbox(
                                            text: controller.checkbox6.value ? "lbl_present".tr : "lbl_absent".tr,
                                            iconSize: getHorizontalSize(18),
                                            value: controller.checkbox6.value,
                                            margin: getMargin(
                                                left: 91, top: 8, bottom: 8),
                                            variant:
                                                CheckboxVariant.FillWhiteA700,
                                            fontStyle:
                                                CheckboxFontStyle.LexendRegular17,
                                            onChange: (value) {
                                              controller.checkbox6.value = value;
                                            }))
                                      ]))),
                              Padding(
                                  padding: getPadding(top: 7),
                                  child:
                                      Divider(color: ColorConstant.indigo40001)),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding:
                                          getPadding(left: 37, top: 6),
                                      child: Row(children: [
                                        Container(
                                            width: getHorizontalSize(96),
                                            child: Text(
                                                "msg_harris_bin_abid_bscs_f19_m_84"
                                                    .tr,
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle.txtRobotoMedium14
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.1)))),
                                        Obx(() => CustomCheckbox(
                                            text: controller.checkbox7.value ? "lbl_present".tr : "lbl_absent".tr,
                                            iconSize: getHorizontalSize(18),
                                            value: controller.checkbox7.value,
                                            margin: getMargin(
                                                left: 91, top: 8, bottom: 8),
                                            variant:
                                                CheckboxVariant.FillWhiteA700,
                                            fontStyle:
                                                CheckboxFontStyle.LexendRegular17,
                                            onChange: (value) {
                                              controller.checkbox7.value = value;
                                            }))
                                      ]))),
                              Padding(
                                  padding: getPadding(top: 7),
                                  child:
                                      Divider(color: ColorConstant.indigo40001)),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding:
                                          getPadding(left: 37, top: 6),
                                      child: Row(children: [
                                        Container(
                                            width: getHorizontalSize(96),
                                            child: Text(
                                                "msg_harris_bin_abid_bscs_f19_m_84"
                                                    .tr,
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle.txtRobotoMedium14
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.1)))),
                                        Obx(() => CustomCheckbox(
                                            text: controller.checkbox8.value ? "lbl_present".tr : "lbl_absent".tr,
                                            iconSize: getHorizontalSize(18),
                                            value: controller.checkbox8.value,
                                            margin: getMargin(
                                                left: 91, top: 8, bottom: 8),
                                            variant:
                                                CheckboxVariant.FillWhiteA700,
                                            fontStyle:
                                                CheckboxFontStyle.LexendRegular17,
                                            onChange: (value) {
                                              controller.checkbox8.value = value;
                                            }))
                                      ]))),
                                      Padding(
                                          padding: getPadding(top: 7),
                                          child:
                                          Divider(color: ColorConstant.indigo40001)),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding:
                                              getPadding(left: 37, top: 5),
                                              child: Row(children: [
                                                Container(
                                                    width: getHorizontalSize(96),
                                                    child: Text(
                                                        "msg_harris_bin_abid_bscs_f19_m_84"
                                                            .tr,
                                                        maxLines: null,
                                                        textAlign: TextAlign.center,
                                                        style: AppStyle.txtRobotoMedium14
                                                            .copyWith(
                                                            letterSpacing:
                                                            getHorizontalSize(
                                                                0.1)))),
                                                Obx(() => CustomCheckbox(
                                                    text: controller.checkbox9.value ? "lbl_present".tr : "lbl_absent".tr,
                                                    iconSize: getHorizontalSize(18),
                                                    value: controller.checkbox9.value,
                                                    margin: getMargin(
                                                        left: 91, top: 10, bottom: 10),
                                                    variant:
                                                    CheckboxVariant.FillWhiteA700,
                                                    fontStyle:
                                                    CheckboxFontStyle.LexendRegular17,
                                                    onChange: (value) {
                                                      controller.checkbox9.value = value;
                                                    }))
                                              ])))]),
            ),
                                    Padding(
                                      padding: getPadding(top:10 ,left: 150),
                                      child: Obx(() => CustomCheckbox(
                                          text: controller.checkbox.value ? "All Present" : "All Absent",
                                          iconSize: getHorizontalSize(18),
                                          value: controller.checkbox.value && controller.checkbox2.value,
                                          margin: getMargin(left: 59, top: 8, bottom: 8),
                                          variant: CheckboxVariant.FillWhiteA700,
                                          fontStyle: CheckboxFontStyle.LexendRegular17,
                                          onChange: (value) {
                                            controller.checkbox.value = value;
                                            controller.checkbox1.value = value;
                                            controller.checkbox2.value = value;
                                            controller.checkbox3.value = value;
                                            controller.checkbox4.value = value;
                                            controller.checkbox5.value = value;
                                            controller.checkbox6.value = value;
                                            controller.checkbox7.value = value;
                                            controller.checkbox8.value = value;
                                            controller.checkbox9.value = value;
                                          })),
                                    ),

                            CustomButton(
                                height: getVerticalSize(36),
                                text: "lbl_next".tr,
                                margin: getMargin(left: 21, top: 20, right: 20),
                                onTap: navigatetoverification),
                            CustomButton(
                                height: getVerticalSize(36),
                                text: "lbl_back".tr,
                                margin: getMargin(left: 20, top: 14, right: 21),
                                variant: ButtonVariant.OutlineIndigoA100,
                                fontStyle:
                                    ButtonFontStyle.InterRegular12IndigoA100),

                            Padding(
                                padding: getPadding(top: 6),
                                child:
                                    Divider(color: ColorConstant.indigo40001))
                          ])))
                    ]))));
  }

  navigatetoverification() {
    Get.toNamed(AppRoutes.attendanceOverallResultScreen, arguments: [

    controller.checkbox.value,
    controller.checkbox1.value,
    controller.checkbox2.value,
    controller.checkbox3.value,
    controller.checkbox4.value,
    controller.checkbox5.value,
    controller.checkbox6.value,
    controller.checkbox7.value,
    controller.checkbox8.value,
    controller.checkbox9.value

    ]);
  }
}
