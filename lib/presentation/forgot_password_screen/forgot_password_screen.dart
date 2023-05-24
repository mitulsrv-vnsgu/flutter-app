import 'controller/forgot_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application188/core/app_export.dart';
import 'package:mitul_s_application188/core/utils/validation_functions.dart';
import 'package:mitul_s_application188/widgets/custom_button.dart';
import 'package:mitul_s_application188/widgets/custom_icon_button.dart';
import 'package:mitul_s_application188/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 24, top: 8, right: 24, bottom: 8),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomIconButton(
                              height: 40,
                              width: 40,
                              shape: IconButtonShape.RoundedBorder8,
                              onTap: () {
                                onTapBtnArrowleftone();
                              },
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowleft)),
                          CustomImageView(
                              svgPath: ImageConstant.imgGroup124,
                              height: getVerticalSize(106),
                              width: getHorizontalSize(100),
                              margin: getMargin(left: 6, top: 45)),
                          Padding(
                              padding: getPadding(left: 6, top: 38),
                              child: Text("lbl_forgot_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGeneralSansBold26)),
                          Container(
                              width: getHorizontalSize(290),
                              margin: getMargin(left: 5, top: 7, right: 31),
                              child: Text("msg_please_enter_your3".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGeneralSansRegular16)),
                          Padding(
                              padding: getPadding(left: 6, top: 26),
                              child: Text("lbl_email_address".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGeneralSansMedium14)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              autofocus: true,
                              controller: controller.emailController,
                              hintText: "msg_enter_email_address".tr,
                              margin: getMargin(left: 6, top: 11, right: 6),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          CustomButton(
                              height: getVerticalSize(55),
                              text: "lbl_submit".tr,
                              margin: getMargin(
                                  left: 6, top: 30, right: 6, bottom: 5),
                              onTap: () {
                                onTapSubmit();
                              })
                        ])))));
  }

  onTapBtnArrowleftone() {
    Get.back();
  }

  onTapSubmit() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
