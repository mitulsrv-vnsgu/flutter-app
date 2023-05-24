import 'controller/match_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application188/core/app_export.dart';
import 'package:mitul_s_application188/widgets/custom_button.dart';

class MatchScreen extends GetWidget<MatchController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.deepPurpleA200,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 3, bottom: 3),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              padding: getPadding(
                                  left: 85, top: 44, right: 85, bottom: 44),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage(ImageConstant.imgGroup8),
                                      fit: BoxFit.cover)),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(left: 42),
                                            child: Text("lbl_it_s_a_match".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtGeneralSansMedium20))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(top: 9),
                                            child: Text("lbl_congraulations".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtGeneralSansBold26WhiteA700))),
                                    Container(
                                        margin: getMargin(
                                            left: 62, top: 35, right: 60),
                                        padding: getPadding(all: 6),
                                        decoration: AppDecoration
                                            .gradientDeeppurpleA100DeeppurpleA10000
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder41),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: EdgeInsets.all(0),
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder34),
                                                  child: Container(
                                                      height: getSize(69),
                                                      width: getSize(69),
                                                      decoration: AppDecoration
                                                          .fillWhiteA700
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder34),
                                                      child: Stack(children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgEllipse56,
                                                            height: getSize(69),
                                                            width: getSize(69),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        34)),
                                                            alignment: Alignment
                                                                .center)
                                                      ])))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 18),
                                        child: Text("lbl_90".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtGeneralSansBold26WhiteA700)),
                                    Padding(
                                        padding: getPadding(top: 3),
                                        child: Text("lbl_match".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtGeneralSansMedium16)),
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(top: 16, bottom: 22),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder84),
                                        child: Container(
                                            height: getSize(168),
                                            width: getSize(168),
                                            padding: getPadding(all: 13),
                                            decoration: AppDecoration
                                                .gradientDeeppurpleA100DeeppurpleA10000
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder84),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse56140x140,
                                                  height: getSize(140),
                                                  width: getSize(140),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(70)),
                                                  alignment: Alignment.center)
                                            ])))
                                  ]))),
                      CustomButton(
                          height: getVerticalSize(55),
                          text: "lbl_message_her".tr,
                          margin: getMargin(left: 30, top: 17, right: 30),
                          variant: ButtonVariant.OutlineWhiteA700),
                      CustomButton(
                          height: getVerticalSize(55),
                          text: "lbl_keep_swiping".tr,
                          margin: getMargin(
                              left: 30, top: 20, right: 30, bottom: 5),
                          variant: ButtonVariant.OutlineDeeppurpleA20001,
                          fontStyle:
                              ButtonFontStyle.GeneralSansMedium14DeeppurpleA200,
                          onTap: () {
                            onTapKeepswiping();
                          })
                    ]))));
  }

  onTapKeepswiping() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
