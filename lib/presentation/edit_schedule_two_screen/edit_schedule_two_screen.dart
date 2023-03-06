import 'controller/edit_schedule_two_controller.dart';
import 'package:final_2/core/app_export.dart';
import 'package:final_2/widgets/custom_button.dart';
import 'package:final_2/widgets/custom_switch.dart';
import 'package:final_2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class EditScheduleTwoScreen extends GetWidget<EditScheduleTwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                height: getVerticalSize(850),
                width: double.maxFinite,
                child: Stack(children: [
                  Align(
                      alignment: Alignment.center,
                      child: SingleChildScrollView(
                          child: Container(
                              height: getVerticalSize(850),
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            padding: getPadding(
                                                left: 84,
                                                top: 22,
                                                right: 84,
                                                bottom: 22),
                                            decoration: AppDecoration
                                                .gradientIndigo400Indigo200,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath:
                                                          ImageConstant.imgImg1,
                                                      height:
                                                          getVerticalSize(77),
                                                      width:
                                                          getHorizontalSize(78),
                                                      margin:
                                                          getMargin(left: 46)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 60, top: 1),
                                                      child: Text("lbl_edit".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtLexendMedium20)),
                                                  Padding(
                                                      padding: getPadding(
                                                          bottom: 82),
                                                      child: Text(
                                                          "lbl_schedule".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtLexendMedium38))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            padding: getPadding(
                                                left: 18,
                                                top: 46,
                                                right: 18,
                                                bottom: 46),
                                            decoration: AppDecoration
                                                .fillWhiteA700
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderTL35),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "lbl_class_name".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular12
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.5))),
                                                        CustomTextFormField(
                                                            focusNode:
                                                                FocusNode(),
                                                            controller: controller
                                                                .inputController,
                                                            margin: getMargin(
                                                                top: 7),
                                                            variant:
                                                                TextFormFieldVariant
                                                                    .OutlineBlack90060,
                                                            suffix: Container(
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            30,
                                                                        top: 11,
                                                                        right:
                                                                            13,
                                                                        bottom:
                                                                            11),
                                                                child: CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgCheckmark)),
                                                            suffixConstraints:
                                                                BoxConstraints(
                                                                    maxHeight:
                                                                        getVerticalSize(
                                                                            36)))
                                                      ]),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 20),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "lbl_subject"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular12
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.5))),
                                                            CustomTextFormField(
                                                                focusNode:
                                                                    FocusNode(),
                                                                controller:
                                                                    controller
                                                                        .inputOneController,
                                                                margin:
                                                                    getMargin(
                                                                        top: 6),
                                                                variant:
                                                                    TextFormFieldVariant
                                                                        .OutlineBlack90060,
                                                                suffix: Container(
                                                                    margin: getMargin(
                                                                        left:
                                                                            30,
                                                                        top: 11,
                                                                        right:
                                                                            13,
                                                                        bottom:
                                                                            11),
                                                                    child: CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgCheckmark)),
                                                                suffixConstraints:
                                                                    BoxConstraints(
                                                                        maxHeight:
                                                                            getVerticalSize(36)))
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 19),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "lbl_room_no"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular12
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.5))),
                                                            CustomTextFormField(
                                                                focusNode:
                                                                    FocusNode(),
                                                                controller:
                                                                    controller
                                                                        .inputTwoController,
                                                                margin:
                                                                    getMargin(
                                                                        top: 7),
                                                                variant: TextFormFieldVariant
                                                                    .OutlineBlack90060,
                                                                prefix: Container(
                                                                    padding: getPadding(
                                                                        left: 4,
                                                                        top: 4,
                                                                        right:
                                                                            5,
                                                                        bottom:
                                                                            4),
                                                                    margin: getMargin(
                                                                        left:
                                                                            10,
                                                                        top: 8,
                                                                        right:
                                                                            10,
                                                                        bottom:
                                                                            8),
                                                                    decoration: BoxDecoration(
                                                                        color: ColorConstant
                                                                            .blueGray90019,
                                                                        borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                            10))),
                                                                    child: CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgVector)),
                                                                prefixConstraints:
                                                                    BoxConstraints(
                                                                        maxHeight:
                                                                            getVerticalSize(36)),
                                                                suffix: Container(margin: getMargin(left: 30, top: 11, right: 13, bottom: 11), child: CustomImageView(svgPath: ImageConstant.imgCheckmark)),
                                                                suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(36)))
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 20),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "lbl_department"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular12
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.5))),
                                                            CustomTextFormField(
                                                                focusNode:
                                                                    FocusNode(),
                                                                controller: controller
                                                                    .inputThreeController,
                                                                margin: getMargin(
                                                                    top: 6),
                                                                variant: TextFormFieldVariant
                                                                    .OutlineBlack90060,
                                                                textInputAction:
                                                                    TextInputAction
                                                                        .done,
                                                                prefix: Container(
                                                                    padding: getPadding(
                                                                        left: 4,
                                                                        top: 3,
                                                                        right:
                                                                            5,
                                                                        bottom:
                                                                            2),
                                                                    margin: getMargin(
                                                                        left:
                                                                            10,
                                                                        top: 8,
                                                                        right:
                                                                            10,
                                                                        bottom:
                                                                            8),
                                                                    decoration: BoxDecoration(
                                                                        color: ColorConstant
                                                                            .blueGray90019,
                                                                        borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                            10))),
                                                                    child: CustomImageView(
                                                                        svgPath: ImageConstant
                                                                            .imgLocationBlack900)),
                                                                prefixConstraints:
                                                                    BoxConstraints(
                                                                        maxHeight:
                                                                            getVerticalSize(36)),
                                                                suffix: Container(margin: getMargin(left: 30, top: 11, right: 13, bottom: 11), child: CustomImageView(svgPath: ImageConstant.imgCheckmark)),
                                                                suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(36)))
                                                          ])),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 5, top: 33),
                                                      child: Text("lbl_time".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterSemiBold14)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 5,
                                                          top: 9,
                                                          right: 5),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        56),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            18,
                                                                        top: 16,
                                                                        right:
                                                                            18,
                                                                        bottom:
                                                                            16),
                                                                decoration: AppDecoration
                                                                    .txtFillGray30001
                                                                    .copyWith(
                                                                        borderRadius: BorderRadiusStyle
                                                                            .txtRoundedBorder12),
                                                                child: Text(
                                                                    "lbl_08".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterSemiBold14)),
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        56),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            18,
                                                                        top: 16,
                                                                        right:
                                                                            18,
                                                                        bottom:
                                                                            16),
                                                                decoration: AppDecoration
                                                                    .txtFillGray30001
                                                                    .copyWith(
                                                                        borderRadius: BorderRadiusStyle
                                                                            .txtRoundedBorder12),
                                                                child: Text(
                                                                    "lbl_30".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterSemiBold14)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 16,
                                                                        bottom:
                                                                            16),
                                                                child: Text(
                                                                    "lbl_to".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterSemiBold14)),
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        56),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            19,
                                                                        top: 16,
                                                                        right:
                                                                            19,
                                                                        bottom:
                                                                            16),
                                                                decoration: AppDecoration
                                                                    .txtFillGray30001
                                                                    .copyWith(
                                                                        borderRadius: BorderRadiusStyle
                                                                            .txtRoundedBorder12),
                                                                child: Text(
                                                                    "lbl_10".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterSemiBold14)),
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        56),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            18,
                                                                        top: 16,
                                                                        right:
                                                                            18,
                                                                        bottom:
                                                                            16),
                                                                decoration: AppDecoration
                                                                    .txtFillGray30001
                                                                    .copyWith(
                                                                        borderRadius: BorderRadiusStyle
                                                                            .txtRoundedBorder12),
                                                                child: Text(
                                                                    "lbl_00".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterSemiBold14))
                                                          ])),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 46,
                                                              top: 11,
                                                              right: 43),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Obx(() =>
                                                                    CustomSwitch(
                                                                        value: controller
                                                                            .isSelectedSwitch
                                                                            .value,
                                                                        onChanged:
                                                                            (value) {
                                                                          controller
                                                                              .isSelectedSwitch
                                                                              .value = value;
                                                                        })),
                                                                Obx(() =>
                                                                    CustomSwitch(
                                                                        value: controller
                                                                            .isSelectedSwitch1
                                                                            .value,
                                                                        onChanged:
                                                                            (value) {
                                                                          controller
                                                                              .isSelectedSwitch1
                                                                              .value = value;
                                                                        }))
                                                              ]))),
                                                  CustomButton(
                                                      height:
                                                          getVerticalSize(36),
                                                      text: "lbl_save".tr,
                                                      margin: getMargin(
                                                          left: 2, top: 29),
                                                      onTap:
                                                          navigatetomainscreen1),
                                                  CustomButton(
                                                      height:
                                                          getVerticalSize(36),
                                                      text: "lbl_back".tr,
                                                      margin: getMargin(
                                                          left: 2,
                                                          top: 15,
                                                          bottom: 19),
                                                      variant: ButtonVariant
                                                          .OutlineIndigoA100,
                                                      fontStyle: ButtonFontStyle
                                                          .InterRegular12IndigoA100,
                                                      onTap: onBackPressed)
                                                ])))
                                  ]))))
                ]))));
  }

  navigatetomainscreen1() {
    Get.toNamed(AppRoutes.mainScreen);
  }

  onBackPressed() {
    Get.back();
  }
}
