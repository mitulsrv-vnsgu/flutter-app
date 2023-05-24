import 'controller/chat_details1_controller.dart';
import 'models/chat_details1_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application188/core/app_export.dart';
import 'package:mitul_s_application188/widgets/custom_icon_button.dart';

class ChatDetails1Page extends StatelessWidget {
  ChatDetails1Controller controller =
      Get.put(ChatDetails1Controller(ChatDetails1Model().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_settings".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGeneralSansBold26,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: getMargin(
                    top: 18,
                  ),
                  padding: getPadding(
                    all: 15,
                  ),
                  decoration: AppDecoration.outlineBlack9000c.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder3,
                  ),
                  child: Row(
                    children: [
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.all(0),
                        color: ColorConstant.blueGray40019,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder34,
                        ),
                        child: Container(
                          height: getSize(
                            70,
                          ),
                          width: getSize(
                            70,
                          ),
                          decoration: AppDecoration.fillBluegray40019.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder34,
                          ),
                          child: Stack(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse80,
                                height: getSize(
                                  70,
                                ),
                                width: getSize(
                                  70,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    35,
                                  ),
                                ),
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 14,
                          top: 12,
                          bottom: 8,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_john_doe".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGeneralSansSemibold18Gray900,
                            ),
                            Padding(
                              padding: getPadding(
                                top: 5,
                              ),
                              child: Text(
                                "msg_johndoe123_gmail_com".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtGeneralSansRegular14Gray50001,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    top: 30,
                  ),
                  child: Row(
                    children: [
                      CustomIconButton(
                        height: 40,
                        width: 40,
                        variant: IconButtonVariant.FillGray10003,
                        padding: IconButtonPadding.PaddingAll11,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgLock1,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 10,
                          top: 10,
                          bottom: 7,
                        ),
                        child: Text(
                          "lbl_change_password".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtGeneralSansMedium16Gray900,
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        svgPath: ImageConstant.imgArrowright,
                        height: getSize(
                          14,
                        ),
                        width: getSize(
                          14,
                        ),
                        margin: getMargin(
                          top: 13,
                          bottom: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    top: 20,
                  ),
                  child: Divider(
                    height: getVerticalSize(
                      1,
                    ),
                    thickness: getVerticalSize(
                      1,
                    ),
                    color: ColorConstant.gray10002,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    top: 19,
                  ),
                  child: Row(
                    children: [
                      CustomIconButton(
                        height: 40,
                        width: 40,
                        variant: IconButtonVariant.FillGray10003,
                        padding: IconButtonPadding.PaddingAll11,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgBell9,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 10,
                          top: 9,
                          bottom: 8,
                        ),
                        child: Text(
                          "lbl_notifications".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtGeneralSansMedium16Gray900,
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        svgPath: ImageConstant.imgArrowright,
                        height: getSize(
                          14,
                        ),
                        width: getSize(
                          14,
                        ),
                        margin: getMargin(
                          top: 13,
                          bottom: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    top: 20,
                  ),
                  child: Divider(
                    height: getVerticalSize(
                      1,
                    ),
                    thickness: getVerticalSize(
                      1,
                    ),
                    color: ColorConstant.gray10002,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    top: 19,
                  ),
                  child: Row(
                    children: [
                      CustomIconButton(
                        height: 40,
                        width: 40,
                        variant: IconButtonVariant.FillGray10003,
                        padding: IconButtonPadding.PaddingAll11,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgHeadset,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 10,
                          top: 9,
                          bottom: 8,
                        ),
                        child: Text(
                          "lbl_contact_us".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtGeneralSansMedium16Gray900,
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        svgPath: ImageConstant.imgArrowright,
                        height: getSize(
                          14,
                        ),
                        width: getSize(
                          14,
                        ),
                        margin: getMargin(
                          top: 13,
                          bottom: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    top: 20,
                  ),
                  child: Divider(
                    height: getVerticalSize(
                      1,
                    ),
                    thickness: getVerticalSize(
                      1,
                    ),
                    color: ColorConstant.gray10002,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    top: 19,
                  ),
                  child: Row(
                    children: [
                      CustomIconButton(
                        height: 40,
                        width: 40,
                        variant: IconButtonVariant.FillGray10003,
                        padding: IconButtonPadding.PaddingAll11,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgDocument1,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 10,
                          top: 9,
                          bottom: 8,
                        ),
                        child: Text(
                          "msg_terms_conditions".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtGeneralSansMedium16Gray900,
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        svgPath: ImageConstant.imgArrowright,
                        height: getSize(
                          14,
                        ),
                        width: getSize(
                          14,
                        ),
                        margin: getMargin(
                          top: 13,
                          bottom: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    top: 20,
                  ),
                  child: Divider(
                    height: getVerticalSize(
                      1,
                    ),
                    thickness: getVerticalSize(
                      1,
                    ),
                    color: ColorConstant.gray10002,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    top: 19,
                  ),
                  child: Row(
                    children: [
                      CustomIconButton(
                        height: 40,
                        width: 40,
                        variant: IconButtonVariant.FillGray50,
                        padding: IconButtonPadding.PaddingAll11,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgSignoutalt2,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 10,
                          top: 10,
                          bottom: 7,
                        ),
                        child: Text(
                          "lbl_logout".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtGeneralSansMedium16DeeppurpleA200,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    top: 20,
                    bottom: 5,
                  ),
                  child: Divider(
                    height: getVerticalSize(
                      1,
                    ),
                    thickness: getVerticalSize(
                      1,
                    ),
                    color: ColorConstant.gray10002,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
