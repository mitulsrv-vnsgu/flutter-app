import '../profile_details_screen/widgets/interests_item_widget.dart';
import 'controller/profile_details_controller.dart';
import 'models/interests_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application188/core/app_export.dart';
import 'package:mitul_s_application188/widgets/custom_button.dart';
import 'package:mitul_s_application188/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProfileDetailsScreen extends GetWidget<ProfileDetailsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                height: size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          height: getVerticalSize(410),
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle240410x375,
                                height: getVerticalSize(410),
                                width: getHorizontalSize(375),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: double.maxFinite,
                                          child: Container(
                                              width: double.maxFinite,
                                              padding: getPadding(
                                                  left: 24,
                                                  top: 8,
                                                  right: 24,
                                                  bottom: 8),
                                              decoration: AppDecoration
                                                  .gradientBlack900Black90000,
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    CustomIconButton(
                                                        height: 40,
                                                        width: 40,
                                                        margin: getMargin(
                                                            bottom: 21),
                                                        variant:
                                                            IconButtonVariant
                                                                .FillBlack900b2,
                                                        shape: IconButtonShape
                                                            .RoundedBorder8,
                                                        onTap: () {
                                                          onTapBtnArrowleftone();
                                                        },
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowleftWhiteA700))
                                                  ]))),
                                      Container(
                                          height: getVerticalSize(6),
                                          margin: getMargin(top: 294),
                                          child: SmoothIndicator(
                                              offset: 0,
                                              count: 4,
                                              size: Size.zero,
                                              effect: ScrollingDotsEffect(
                                                  spacing: 6,
                                                  activeDotColor: ColorConstant
                                                      .deepPurpleA200,
                                                  dotColor:
                                                      ColorConstant.black9004c,
                                                  dotHeight: getVerticalSize(6),
                                                  dotWidth:
                                                      getHorizontalSize(6))))
                                    ]))
                          ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: getPadding(
                              left: 30, top: 23, right: 30, bottom: 23),
                          decoration: AppDecoration.outlineBlack90005.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL20),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: getPadding(top: 1),
                                          child: Text("lbl_charlotte_26".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGeneralSansSemibold20Gray900)),
                                      CustomButton(
                                          height: getVerticalSize(26),
                                          width: getHorizontalSize(54),
                                          text: "lbl_2_5_mile".tr,
                                          margin: getMargin(bottom: 2),
                                          variant: ButtonVariant.FillBlack900b2,
                                          padding: ButtonPadding.PaddingAll6,
                                          fontStyle: ButtonFontStyle
                                              .GeneralSansMedium10)
                                    ]),
                                Padding(
                                    padding: getPadding(top: 7),
                                    child: Row(children: [
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgMarker61Gray500,
                                          height: getSize(16),
                                          width: getSize(16),
                                          margin: getMargin(top: 1, bottom: 1)),
                                      Padding(
                                          padding: getPadding(left: 4),
                                          child: Text("lbl_new_york".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGeneralSansRegular14))
                                    ])),
                                Padding(
                                    padding: getPadding(top: 22),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.gray10002)),
                                Padding(
                                    padding: getPadding(top: 18),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("lbl_interests".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGeneralSansSemibold18Gray900),
                                          Padding(
                                              padding:
                                                  getPadding(top: 2, bottom: 3),
                                              child: Text("lbl_4_similar".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium14DeeppurpleA200))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Obx(() => Wrap(
                                        runSpacing: getVerticalSize(5),
                                        spacing: getHorizontalSize(5),
                                        children: List<Widget>.generate(
                                            controller
                                                .profileDetailsModelObj
                                                .value
                                                .interestsItemList
                                                .value
                                                .length, (index) {
                                          InterestsItemModel model = controller
                                              .profileDetailsModelObj
                                              .value
                                              .interestsItemList
                                              .value[index];
                                          return InterestsItemWidget(model);
                                        })))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 37,
                                            top: 34,
                                            right: 36,
                                            bottom: 25),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomIconButton(
                                                  height: 45,
                                                  width: 45,
                                                  margin: getMargin(
                                                      top: 6, bottom: 6),
                                                  variant: IconButtonVariant
                                                      .OutlineRed50,
                                                  padding: IconButtonPadding
                                                      .PaddingAll15,
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgClose)),
                                              CustomIconButton(
                                                  height: 59,
                                                  width: 59,
                                                  variant: IconButtonVariant
                                                      .OutlineDeeppurple5003,
                                                  shape: IconButtonShape
                                                      .RoundedBorder29,
                                                  padding: IconButtonPadding
                                                      .PaddingAll15,
                                                  onTap: () {
                                                    onTapBtnFavoriteone();
                                                  },
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgFavoriteWhiteA700)),
                                              CustomIconButton(
                                                  height: 45,
                                                  width: 45,
                                                  margin: getMargin(
                                                      top: 6, bottom: 6),
                                                  variant: IconButtonVariant
                                                      .OutlineBlue50,
                                                  padding: IconButtonPadding
                                                      .PaddingAll15,
                                                  onTap: () {
                                                    onTapBtnUserone();
                                                  },
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgUserBlue400))
                                            ])))
                              ])))
                ]))));
  }

  onTapBtnArrowleftone() {
    Get.back();
  }

  onTapBtnFavoriteone() {
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
