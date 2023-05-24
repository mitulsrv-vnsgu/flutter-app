import 'controller/chat_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application188/core/app_export.dart';
import 'package:mitul_s_application188/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mitul_s_application188/widgets/app_bar/custom_app_bar.dart';
import 'package:mitul_s_application188/widgets/custom_floating_button.dart';

class ChatDetailsScreen extends GetWidget<ChatDetailsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(55),
                leadingWidth: 64,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 8, bottom: 7),
                    onTap: () {
                      onTapArrowleftone3();
                    }),
                centerTitle: true,
                title: Text("lbl_kristin_watson".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGeneralSansSemibold18Gray900),
                actions: [
                  AppbarIconbutton(
                      svgPath: ImageConstant.imgSignal,
                      margin: getMargin(left: 24, top: 7, right: 24, bottom: 8))
                ]),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(top: 31),
                          padding: getPadding(left: 30, right: 30),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding:
                                            getPadding(left: 34, right: 33),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 8, bottom: 9),
                                                  child: SizedBox(
                                                      width:
                                                          getHorizontalSize(95),
                                                      child: Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .gray300))),
                                              Padding(
                                                  padding: getPadding(left: 10),
                                                  child: Text("lbl_today".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtGeneralSansRegular14)),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 8, bottom: 9),
                                                  child: SizedBox(
                                                      width: getHorizontalSize(
                                                          105),
                                                      child: Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .gray300,
                                                          indent:
                                                              getHorizontalSize(
                                                                  10))))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        margin: getMargin(top: 23),
                                        padding: getPadding(
                                            left: 19,
                                            top: 15,
                                            right: 19,
                                            bottom: 15),
                                        decoration: AppDecoration
                                            .fillDeeppurpleA200
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL10),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(left: 1),
                                                  child: Text(
                                                      "msg_hello_how_are_you"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtGeneralSansMedium14WhiteA700)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 1, top: 4),
                                                  child: Text("lbl_05_00pm".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtGeneralSansRegular10))
                                            ]))),
                                Container(
                                    margin: getMargin(top: 20),
                                    padding: getPadding(
                                        left: 19,
                                        top: 16,
                                        right: 19,
                                        bottom: 16),
                                    decoration: AppDecoration.outlineGray200
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .customBorderTL101),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              width: getHorizontalSize(163),
                                              margin: getMargin(top: 1),
                                              child: Text(
                                                  "msg_i_am_good_thanks".tr,
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGeneralSansMedium14)),
                                          Text("lbl_05_04pm".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGeneralSansRegular10Gray500)
                                        ])),
                                Container(
                                    margin: getMargin(top: 10),
                                    padding: getPadding(
                                        left: 19,
                                        top: 15,
                                        right: 19,
                                        bottom: 15),
                                    decoration: AppDecoration.outlineGray200
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .customBorderTL101),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("lbl_can_we_meet".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGeneralSansMedium14),
                                          Padding(
                                              padding:
                                                  getPadding(top: 4, bottom: 1),
                                              child: Text("lbl_05_04pm".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGeneralSansRegular10Gray500))
                                        ]))
                              ])),
                      Spacer()
                    ])),
            bottomNavigationBar: Container(
                margin: getMargin(left: 35, right: 90, bottom: 61),
                decoration: AppDecoration.outlineGray30001
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder3),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("lbl_write_here".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtGeneralSansRegular14Gray400),
                      CustomImageView(
                          svgPath: ImageConstant.imgCamera81,
                          height: getSize(20),
                          width: getSize(20))
                    ])),
            floatingActionButton: CustomFloatingButton(
                height: 40,
                width: 40,
                child: CustomImageView(
                    svgPath: ImageConstant.imgPaperplane1,
                    height: getVerticalSize(20.0),
                    width: getHorizontalSize(20.0)))));
  }

  onTapArrowleftone3() {
    Get.back();
  }
}
