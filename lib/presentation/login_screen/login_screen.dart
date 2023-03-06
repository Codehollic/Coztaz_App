import 'controller/login_controller.dart';
import 'package:final_2/core/app_export.dart';
import 'package:final_2/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:final_2/Domain/googleauth/google_auth_helper.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                      ColorConstant.indigoA20001,
                      ColorConstant.indigo40001
                    ])),
                child: Container(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: SingleChildScrollView(
                                  child: Padding(
                                      padding: getPadding(
                                          left: 20, right: 6, bottom: 58),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                                height: getVerticalSize(134),
                                                width: getHorizontalSize(180),
                                                margin: getMargin(left: 63),
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      175),
                                                              margin: getMargin(
                                                                  bottom: 19),
                                                              child: Text(
                                                                  "msg_organize_prioritize_delegate"
                                                                      .tr,
                                                                  maxLines:
                                                                      null,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: AppStyle
                                                                      .txtInterRegular16WhiteA70093))),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgCoztazw031134x180,
                                                          height:
                                                              getVerticalSize(
                                                                  134),
                                                          width:
                                                              getHorizontalSize(
                                                                  180),
                                                          alignment:
                                                              Alignment.center)
                                                    ])),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgArtoic,
                                                height: getVerticalSize(221),
                                                width: getHorizontalSize(330),
                                                margin: getMargin(
                                                    left: 4, top: 16)),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgGooglelogo,
                                                height: getVerticalSize(97),
                                                width: getHorizontalSize(98),
                                                margin: getMargin(
                                                    left: 104, top: 106),
                                                onTap: () {
                                                  signgoogle();
                                                }),
                                            CustomButton(
                                                text: "lbl_login".tr,
                                                margin: getMargin(
                                                    top: 42, right: 15),
                                                variant: ButtonVariant
                                                    .GradientRedA200Deeporange30001,
                                                onTap: toschedule),
                                            Padding(
                                                padding: getPadding(
                                                    left: 4,
                                                    top: 33,
                                                    right: 22),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                          "msg_forget_password"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterSemiBold12),
                                                      Text("lbl_help".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterSemiBold12)
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    left: 43, top: 76),
                                                child: Text(
                                                    "msg_dont_have_a_google".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterSemiBold12WhiteA700aa)),
                                            Align(
                                                alignment: Alignment.center,
                                                child: GestureDetector(
                                                    onTap: () {
                                                      tourl();
                                                    },
                                                    child: Padding(
                                                        padding: getPadding(
                                                            right: 64),
                                                        child: Text(
                                                            "lbl_register".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterSemiBold14WhiteA700))))
                                          ]))))
                        ])))));
  }

  signgoogle() async {
    await GoogleAuthHelper().signInWithGoogle().then((googleUser) {
      if (googleUser != null) {
        onSuccessGoogleAuthResponse(googleUser);
      } else {
        onErrorGoogleAuthResponse();
      }
    }).catchError((onError) {
      onErrorGoogleAuthResponse();
    });
  }

  onSuccessGoogleAuthResponse(GoogleSignInAccount googleUser) {
    Get.toNamed(AppRoutes.scheduleScreen);
  }

  onErrorGoogleAuthResponse() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Loggin Failed",
        middleText: "Google SigninFailed");
  }

  toschedule() {
    Get.toNamed(AppRoutes.scheduleScreen);
  }

  tourl() async {
    var url = 'https://accounts.google.com/signin';
    if (!await launch(url)) {
      throw 'Could not launch https://accounts.google.com/signin';
    }
  }
}
