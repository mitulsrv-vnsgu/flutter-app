import 'controller/onboarding_controller.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application188/core/app_export.dart';
import 'package:mitul_s_application188/widgets/custom_button.dart';
import 'package:mitul_s_application188/widgets/custom_icon_button.dart';

class OnboardingScreen extends GetWidget<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 30, top: 36, right: 30, bottom: 36),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(315),
                          width: getHorizontalSize(302),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    height: getVerticalSize(296),
                                    width: getHorizontalSize(287),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: DottedBorder(
                                                  color: ColorConstant
                                                      .deepPurple50,
                                                  padding: EdgeInsets.only(
                                                      left:
                                                          getHorizontalSize(1),
                                                      top: getVerticalSize(1),
                                                      right:
                                                          getHorizontalSize(1),
                                                      bottom:
                                                          getVerticalSize(1)),
                                                  strokeWidth:
                                                      getHorizontalSize(1),
                                                  radius: Radius.circular(148),
                                                  borderType: BorderType.RRect,
                                                  dashPattern: [7, 4],
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(296),
                                                      width: getHorizontalSize(
                                                          287),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      148)))))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: DottedBorder(
                                                  color: ColorConstant
                                                      .deepPurple5001,
                                                  padding: EdgeInsets.only(
                                                      left:
                                                          getHorizontalSize(1),
                                                      top: getVerticalSize(1),
                                                      right:
                                                          getHorizontalSize(1),
                                                      bottom:
                                                          getVerticalSize(1)),
                                                  strokeWidth:
                                                      getHorizontalSize(1),
                                                  radius: Radius.circular(78),
                                                  borderType: BorderType.RRect,
                                                  dashPattern: [7, 4],
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(157),
                                                      width: getHorizontalSize(
                                                          153),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      78))))))
                                        ]))),
                            CustomImageView(
                                svgPath: ImageConstant.imgShare,
                                height: getVerticalSize(100),
                                width: getHorizontalSize(55),
                                alignment: Alignment.topCenter,
                                margin: getMargin(top: 12)),
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse6,
                                height: getSize(39),
                                width: getSize(39),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(19)),
                                alignment: Alignment.bottomCenter),
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse8,
                                height: getSize(23),
                                width: getSize(23),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(11)),
                                alignment: Alignment.bottomRight,
                                margin: getMargin(right: 89, bottom: 99)),
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse10,
                                height: getSize(33),
                                width: getSize(33),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(16)),
                                alignment: Alignment.topRight,
                                margin: getMargin(top: 17, right: 43)),
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse11,
                                height: getSize(33),
                                width: getSize(33),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(16)),
                                alignment: Alignment.bottomLeft,
                                margin: getMargin(bottom: 116)),
                            CustomIconButton(
                                height: 40,
                                width: 40,
                                margin: getMargin(bottom: 100),
                                variant: IconButtonVariant.FillIndigo50,
                                alignment: Alignment.bottomRight,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgLocation)),
                            CustomIconButton(
                                height: 33,
                                width: 33,
                                margin: getMargin(left: 84, top: 77),
                                variant: IconButtonVariant.FillIndigo50,
                                shape: IconButtonShape.RoundedBorder16,
                                alignment: Alignment.topLeft,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgFavorite))
                          ])),
                      Container(
                          width: getHorizontalSize(235),
                          margin: getMargin(left: 40, top: 69, right: 40),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_find_your".tr,
                                    style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(30),
                                        fontFamily: 'General Sans',
                                        fontWeight: FontWeight.w700)),
                                TextSpan(
                                    text: "lbl_partner".tr,
                                    style: TextStyle(
                                        color: ColorConstant.deepPurpleA200,
                                        fontSize: getFontSize(30),
                                        fontFamily: 'General Sans',
                                        fontWeight: FontWeight.w700)),
                                TextSpan(
                                    text: " ",
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(30),
                                        fontFamily: 'General Sans',
                                        fontWeight: FontWeight.w700)),
                                TextSpan(
                                    text: "lbl_with_us".tr,
                                    style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(30),
                                        fontFamily: 'General Sans',
                                        fontWeight: FontWeight.w700))
                              ]),
                              textAlign: TextAlign.center)),
                      Container(
                          width: getHorizontalSize(204),
                          margin: getMargin(top: 25),
                          child: Text("msg_join_us_and_socialize".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtGeneralSansRegular18)),
                      CustomButton(
                          height: getVerticalSize(55),
                          text: "lbl_get_started".tr,
                          margin: getMargin(top: 28),
                          variant: ButtonVariant.FillDeeppurpleA200,
                          onTap: () {
                            onTapGetstarted();
                          }),
                      GestureDetector(
                          onTap: () {
                            onTapTxtAlreadyauser();
                          },
                          child: Padding(
                              padding: getPadding(top: 25, bottom: 5),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "lbl_already_a_user".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray500,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'General Sans',
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(
                                        text: "lbl_login".tr,
                                        style: TextStyle(
                                            color: ColorConstant.deepPurpleA200,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'General Sans',
                                            fontWeight: FontWeight.w500))
                                  ]),
                                  textAlign: TextAlign.left)))
                    ]))));
  }

  onTapGetstarted() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }

  onTapTxtAlreadyauser() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
