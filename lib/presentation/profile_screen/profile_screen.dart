import '../profile_screen/widgets/profile_item_widget.dart';
import 'controller/profile_controller.dart';
import 'models/profile_item_model.dart';
import 'package:final_2/core/app_export.dart';
import 'package:final_2/widgets/app_bar/appbar_image.dart';
import 'package:final_2/widgets/app_bar/custom_app_bar.dart';
import 'package:final_2/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends GetWidget<ProfileController> {
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
                          width: getHorizontalSize(343),
                          margin: getMargin(left: 8, top: 10, right: 9),
                          padding: getPadding(top: 16, bottom: 16),
                          decoration: AppDecoration.gradientIndigo400Indigo200
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder35),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomAppBar(
                                    height: getVerticalSize(95),
                                    title: Padding(
                                        padding: getPadding(left: 24),
                                        child: Text("lbl_profile".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtLexendSemiBold24)),
                                    actions: [
                                      AppbarImage(
                                          height: getSize(24),
                                          width: getSize(24),
                                          svgPath: ImageConstant.imgMenu,
                                          margin: getMargin(
                                              left: 25,
                                              top: 2,
                                              right: 25,
                                              bottom: 3))
                                    ])
                              ])),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding:
                                      getPadding(left: 8, right: 9, bottom: 66,top: 25),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  height: getSize(104),
                                                  width: getSize(104),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                height: getSize(
                                                                    104),
                                                                width: getSize(
                                                                    104),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .center,
                                                                          child: Container(
                                                                              height: getSize(104),
                                                                              width: getSize(104),
                                                                              child: CircularProgressIndicator(value: 0.5, strokeWidth: getHorizontalSize(4)))),
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .center,
                                                                          child: Container(
                                                                              height: getSize(104),
                                                                              width: getSize(104),
                                                                              child: CircularProgressIndicator(value: 0.5, strokeWidth: getHorizontalSize(16))))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        89),
                                                                width:
                                                                    getHorizontalSize(
                                                                        90),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .center,
                                                                          child: Container(
                                                                              height: getSize(88),
                                                                              width: getSize(88),
                                                                              decoration: BoxDecoration(color: ColorConstant.blue300, borderRadius: BorderRadius.circular(getHorizontalSize(44))))),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgEducationiconsmadam,
                                                                          height: getVerticalSize(
                                                                              89),
                                                                          width: getHorizontalSize(
                                                                              90),
                                                                          radius: BorderRadius.circular(getHorizontalSize(
                                                                              44)),
                                                                          alignment:
                                                                              Alignment.center)
                                                                    ]))),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .img1212011,
                                                            height:
                                                                getVerticalSize(
                                                                    92),
                                                            width:
                                                                getHorizontalSize(
                                                                    89),
                                                            alignment: Alignment
                                                                .center)
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 24),
                                                  child: Text(
                                                      "lbl_harris_bin_abid".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtLexendSemiBold24Gray90001)),
                                              Padding(
                                                  padding: getPadding(top: 7),
                                                  child: Text(
                                                      "msg_princeharry68_9_gmail_com"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtLexendRegular14)),
                                              Container(
                                                  width: double.maxFinite,
                                                  child: Container(
                                                      margin:
                                                          getMargin(top: 16),
                                                      padding: getPadding(
                                                          top: 16, bottom: 16),
                                                      decoration: AppDecoration
                                                          .outlineGray10002
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder17),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            16),
                                                                child: Text(
                                                                    "lbl_basic_info"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtLexendSemiBold16)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            16),
                                                                child: Divider(
                                                                    color: ColorConstant
                                                                        .gray10002)),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 14,
                                                                        right:
                                                                            16),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Padding(
                                                                              padding: getPadding(top: 3, bottom: 2),
                                                                              child: Text("lbl_name".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLexendMedium14)),
                                                                          Spacer(),
                                                                          Padding(
                                                                              padding: getPadding(top: 2, bottom: 3),
                                                                              child: Text("lbl_harris_bin_abid".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLexendSemiBold14Gray90001)),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgLock,
                                                                              height: getSize(24),
                                                                              width: getSize(24),
                                                                              margin: getMargin(left: 8))
                                                                        ]))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 17,
                                                                        right:
                                                                            47),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                          "lbl_birthday"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtLexendMedium14),
                                                                      Text(
                                                                          "lbl_31_august_1989"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtLexendMedium14Gray90001)
                                                                    ])),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 14,
                                                                        right:
                                                                            49,
                                                                        bottom:
                                                                            11),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                          "lbl_gender"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtLexendMedium14),
                                                                      Text(
                                                                          "lbl_male"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtLexendMedium14Gray90001)
                                                                    ]))
                                                          ])))
                                            ]),
                                        Container(
                                            width: double.maxFinite,
                                            child: Container(
                                                margin: getMargin(top: 12),
                                                padding: getPadding(
                                                    top: 16, bottom: 16),
                                                decoration: AppDecoration
                                                    .outlineGray10002
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder17),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16),
                                                          child: Text(
                                                              "lbl_contact_info"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtLexendSemiBold16)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 16),
                                                          child: Divider(
                                                              color: ColorConstant
                                                                  .gray10002)),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 16,
                                                                      top: 14,
                                                                      right: 16,
                                                                      bottom:
                                                                          2),
                                                              child: Obx(() => ListView
                                                                  .separated(
                                                                      physics:
                                                                          NeverScrollableScrollPhysics(),
                                                                      shrinkWrap:
                                                                          true,
                                                                      separatorBuilder:
                                                                          (context,
                                                                              index) {
                                                                        return SizedBox(
                                                                            height:
                                                                                getVerticalSize(16));
                                                                      },
                                                                      itemCount: controller
                                                                          .profileModelObj
                                                                          .value
                                                                          .profileItemList
                                                                          .length,
                                                                      itemBuilder:
                                                                          (context,
                                                                              index) {
                                                                        ProfileItemModel model = controller
                                                                            .profileModelObj
                                                                            .value
                                                                            .profileItemList[index];
                                                                        return ProfileItemWidget(
                                                                            model);
                                                                      }))))
                                                    ]))),
                                        CustomButton(
                                            height: getVerticalSize(36),
                                            text: "lbl_logout".tr,
                                            margin: getMargin(
                                                left: 12, top: 24, right: 12),
                                            onTap: navigatetologin),
                                        CustomButton(
                                            height: getVerticalSize(36),
                                            text: "lbl_back".tr,
                                            margin: getMargin(
                                                left: 13, top: 25, right: 11),
                                            variant:
                                                ButtonVariant.OutlineIndigoA100,
                                            fontStyle: ButtonFontStyle
                                                .InterRegular12IndigoA100,
                                            onTap: onBackPressed)
                                      ]))))
                    ]))));
  }

  navigatetologin() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  onBackPressed() {
    Get.toNamed(AppRoutes.mainScreen);
  }
}
