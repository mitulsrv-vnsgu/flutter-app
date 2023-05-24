import 'controller/signup_question_1_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application188/core/app_export.dart';
import 'package:mitul_s_application188/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mitul_s_application188/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:mitul_s_application188/widgets/app_bar/custom_app_bar.dart';
import 'package:mitul_s_application188/widgets/custom_button.dart';

class SignupQuestion1Screen extends GetWidget<SignupQuestion1Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(40),
                leadingWidth: 64,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                centerTitle: true,
                title: AppbarSubtitle1(text: "msg_let_s_get_started".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 30, bottom: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(5),
                          width: double.maxFinite,
                          decoration:
                              BoxDecoration(color: ColorConstant.blueGray50),
                          child: ClipRRect(
                              child: LinearProgressIndicator(
                                  value: 0.33,
                                  backgroundColor: ColorConstant.blueGray50,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      ColorConstant.deepPurpleA200)))),
                      Padding(
                          padding: getPadding(left: 30, top: 30),
                          child: Text("lbl_i_am_a".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGeneralSansBold26)),
                      Container(
                          width: getHorizontalSize(288),
                          margin: getMargin(left: 30, top: 10, right: 56),
                          child: Text("msg_please_tell_us_your".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGeneralSansRegular16)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(
                                  left: 30, top: 23, right: 30, bottom: 5),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        padding: getPadding(
                                            left: 31,
                                            top: 13,
                                            right: 31,
                                            bottom: 13),
                                        decoration: AppDecoration
                                            .outlineDeeppurple5001
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder3),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgFrame,
                                                  height: getSize(25),
                                                  width: getSize(25),
                                                  margin: getMargin(top: 6)),
                                              Padding(
                                                  padding: getPadding(top: 20),
                                                  child: Text("lbl_male".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtGeneralSansMedium14WhiteA700))
                                            ])),
                                    Container(
                                        margin: getMargin(left: 15),
                                        padding: getPadding(
                                            left: 23,
                                            top: 13,
                                            right: 23,
                                            bottom: 13),
                                        decoration: AppDecoration
                                            .outlineGray3001
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder3),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgFrameBlack900,
                                                  height: getVerticalSize(25),
                                                  width: getHorizontalSize(16),
                                                  margin: getMargin(top: 6)),
                                              Padding(
                                                  padding: getPadding(top: 20),
                                                  child: Text("lbl_female".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtGeneralSansMedium14Gray90001))
                                            ])),
                                    Container(
                                        margin: getMargin(left: 15),
                                        padding: getPadding(
                                            left: 28,
                                            top: 13,
                                            right: 28,
                                            bottom: 13),
                                        decoration: AppDecoration
                                            .outlineGray3001
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder3),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgFrameBlack90025x25,
                                                  height: getSize(25),
                                                  width: getSize(25),
                                                  margin: getMargin(top: 6)),
                                              Padding(
                                                  padding: getPadding(top: 20),
                                                  child: Text("lbl_other".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtGeneralSansMedium14Gray90001))
                                            ]))
                                  ])))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(55),
                text: "lbl_next".tr,
                margin: getMargin(left: 30, right: 30, bottom: 66),
                onTap: () {
                  onTapNext();
                })));
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.signupQuestion2Screen,
    );
  }

  onTapArrowleftone() {
    Get.back();
  }
}
