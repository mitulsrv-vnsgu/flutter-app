import 'controller/signup_question_2_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application188/core/app_export.dart';
import 'package:mitul_s_application188/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mitul_s_application188/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:mitul_s_application188/widgets/app_bar/custom_app_bar.dart';
import 'package:mitul_s_application188/widgets/custom_button.dart';

class SignupQuestion2Screen extends GetWidget<SignupQuestion2Controller> {
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
                      onTapArrowleftone1();
                    }),
                centerTitle: true,
                title: AppbarSubtitle1(text: "msg_let_s_get_started".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 30, bottom: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(5),
                          width: double.maxFinite,
                          decoration:
                              BoxDecoration(color: ColorConstant.blueGray50),
                          child: ClipRRect(
                              child: LinearProgressIndicator(
                                  value: 0.67,
                                  backgroundColor: ColorConstant.blueGray50,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      ColorConstant.deepPurpleA200)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 30, top: 32),
                              child: Text("lbl_i_m_looking_for".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGeneralSansBold26))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 30, top: 8),
                              child: Text("msg_select_your_interests".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGeneralSansRegular16))),
                      CustomButton(
                          height: getVerticalSize(55),
                          text: "lbl_love".tr,
                          margin: getMargin(left: 30, top: 24, right: 30),
                          variant: ButtonVariant.OutlineGray300,
                          fontStyle:
                              ButtonFontStyle.GeneralSansMedium14Gray90001),
                      CustomButton(
                          height: getVerticalSize(55),
                          text: "lbl_friendship".tr,
                          margin: getMargin(left: 30, top: 15, right: 30),
                          variant: ButtonVariant.FillDeeppurpleA200),
                      CustomButton(
                          height: getVerticalSize(55),
                          text: "lbl_both".tr,
                          margin: getMargin(
                              left: 30, top: 15, right: 30, bottom: 5),
                          variant: ButtonVariant.OutlineGray300,
                          fontStyle:
                              ButtonFontStyle.GeneralSansMedium14Gray90001)
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 30, right: 30, bottom: 66),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomButton(
                      height: getVerticalSize(55),
                      width: getHorizontalSize(150),
                      text: "lbl_previous".tr,
                      variant: ButtonVariant.FillGray200,
                      fontStyle: ButtonFontStyle.GeneralSansMedium14Gray90001,
                      onTap: () {
                        onTapPrevious();
                      }),
                  CustomButton(
                      height: getVerticalSize(55),
                      width: getHorizontalSize(150),
                      text: "lbl_next".tr,
                      margin: getMargin(left: 15),
                      onTap: () {
                        onTapNext();
                      })
                ]))));
  }

  onTapPrevious() {
    Get.toNamed(
      AppRoutes.signupQuestion1Screen,
    );
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.signupQuestion3Screen,
    );
  }

  onTapArrowleftone1() {
    Get.back();
  }
}
