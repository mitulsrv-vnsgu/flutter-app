import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application188/core/app_export.dart';
import 'package:mitul_s_application188/widgets/app_bar/appbar_image.dart';
import 'package:mitul_s_application188/widgets/app_bar/appbar_title.dart';
import 'package:mitul_s_application188/widgets/app_bar/custom_app_bar.dart';
import 'package:mitul_s_application188/widgets/custom_button.dart';
import 'package:mitul_s_application188/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(67),
                title: AppbarTitle(
                    text: "lbl_discover".tr, margin: getMargin(left: 30)),
                actions: [
                  Container(
                      height: getSize(42),
                      width: getSize(42),
                      margin: getMargin(left: 30, top: 7, right: 30, bottom: 7),
                      child: Stack(alignment: Alignment.topRight, children: [
                        AppbarImage(
                            height: getSize(40),
                            width: getSize(40),
                            imagePath: ImageConstant.imgRectangle238,
                            margin: getMargin(top: 2, right: 2)),
                        Align(
                            alignment: Alignment.topRight,
                            child: Container(
                                height: getSize(12),
                                width: getSize(12),
                                margin: getMargin(left: 30, bottom: 30),
                                decoration: BoxDecoration(
                                    color: ColorConstant.deepPurpleA200,
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(6)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: ColorConstant.deepPurple5001,
                                          spreadRadius: getHorizontalSize(2),
                                          blurRadius: getHorizontalSize(2),
                                          offset: Offset(0, 8))
                                    ])))
                      ]))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 30, top: 13, right: 30, bottom: 13),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(449),
                          width: getHorizontalSize(315),
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle240,
                                height: getVerticalSize(449),
                                width: getHorizontalSize(315),
                                radius:
                                    BorderRadius.circular(getHorizontalSize(5)),
                                alignment: Alignment.center,
                                onTap: () {
                                  onTapImgImageone();
                                }),
                            Align(
                                alignment: Alignment.center,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomButton(
                                          height: getVerticalSize(26),
                                          width: getHorizontalSize(104),
                                          text: "lbl_she_likes_you".tr,
                                          variant: ButtonVariant.FillBlack900b2,
                                          padding: ButtonPadding.PaddingT4,
                                          fontStyle: ButtonFontStyle
                                              .GeneralSansRegular12,
                                          suffixWidget: Container(
                                              margin: getMargin(left: 5),
                                              decoration: BoxDecoration(
                                                  color: ColorConstant.redA200),
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgFavoriteRedA200))),
                                      Container(
                                          margin: getMargin(top: 297),
                                          padding: getPadding(
                                              left: 15,
                                              top: 17,
                                              right: 15,
                                              bottom: 17),
                                          decoration: AppDecoration
                                              .gradientBlack90000Black900
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderBL5),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Padding(
                                                    padding:
                                                        getPadding(top: 32),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                              "lbl_charlotte_26"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtGeneralSansSemibold20),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 2),
                                                              child: Row(
                                                                  children: [
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgMarker61,
                                                                        height: getSize(
                                                                            16),
                                                                        width: getSize(
                                                                            16),
                                                                        margin: getMargin(
                                                                            top:
                                                                                1,
                                                                            bottom:
                                                                                1)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                4),
                                                                        child: Text(
                                                                            "lbl_new_york"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtGeneralSansRegular14WhiteA700))
                                                                  ]))
                                                        ])),
                                                CustomButton(
                                                    height: getVerticalSize(26),
                                                    width:
                                                        getHorizontalSize(54),
                                                    text: "lbl_2_5_mile".tr,
                                                    margin: getMargin(
                                                        top: 42, bottom: 12),
                                                    variant: ButtonVariant
                                                        .FillBlack900b2,
                                                    padding: ButtonPadding
                                                        .PaddingAll6,
                                                    fontStyle: ButtonFontStyle
                                                        .GeneralSansMedium10)
                                              ]))
                                    ]))
                          ])),
                      Padding(
                          padding: getPadding(
                              left: 38, top: 26, right: 35, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomIconButton(
                                    height: 45,
                                    width: 45,
                                    margin: getMargin(top: 6, bottom: 7),
                                    variant: IconButtonVariant.OutlineRed50,
                                    padding: IconButtonPadding.PaddingAll15,
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgClose)),
                                Container(
                                    height: getVerticalSize(60),
                                    width: getHorizontalSize(59),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgFavoriteWhiteA700,
                                              height: getVerticalSize(21),
                                              width: getHorizontalSize(25),
                                              alignment: Alignment.bottomLeft,
                                              margin: getMargin(left: 16)),
                                          CustomIconButton(
                                              height: 59,
                                              width: 59,
                                              variant: IconButtonVariant
                                                  .OutlineDeeppurple5003,
                                              shape: IconButtonShape
                                                  .RoundedBorder29,
                                              padding: IconButtonPadding
                                                  .PaddingAll15,
                                              alignment: Alignment.center,
                                              onTap: () {
                                                onTapBtnFavoritethree();
                                              },
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgFavoriteWhiteA700))
                                        ])),
                                CustomIconButton(
                                    height: 45,
                                    width: 45,
                                    margin: getMargin(top: 6, bottom: 7),
                                    variant: IconButtonVariant.OutlineBlue50,
                                    padding: IconButtonPadding.PaddingAll15,
                                    onTap: () {
                                      onTapBtnUserone();
                                    },
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgUserBlue400))
                              ]))
                    ]))));
  }

  onTapImgImageone() {
    Get.toNamed(
      AppRoutes.profileDetailsScreen,
    );
  }

  onTapBtnFavoritethree() {
    Get.toNamed(
      AppRoutes.matchScreen,
    );
  }

  onTapBtnUserone() {
    Get.toNamed(
      AppRoutes.chatDetailsScreen,
    );
  }
}
