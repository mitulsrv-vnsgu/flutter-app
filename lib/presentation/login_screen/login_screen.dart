import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application188/core/app_export.dart';
import 'package:mitul_s_application188/core/utils/validation_functions.dart';
import 'package:mitul_s_application188/widgets/custom_button.dart';
import 'package:mitul_s_application188/widgets/custom_text_form_field.dart';
import 'package:mitul_s_application188/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
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
                    padding:
                        getPadding(left: 30, top: 52, right: 30, bottom: 52),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("lbl_sign_in".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGeneralSansBold26),
                          Container(
                              width: getHorizontalSize(289),
                              margin: getMargin(top: 8, right: 26),
                              child: Text("msg_please_enter_your".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGeneralSansRegular16)),
                          Padding(
                              padding: getPadding(top: 25),
                              child: Text("lbl_email_address".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGeneralSansMedium14)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              autofocus: true,
                              controller: controller.emailController,
                              hintText: "msg_enter_email_address".tr,
                              margin: getMargin(top: 11),
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          Padding(
                              padding: getPadding(top: 17),
                              child: Text("lbl_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGeneralSansMedium14)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              autofocus: true,
                              controller: controller.passwordController,
                              hintText: "msg_enter_your_password".tr,
                              margin: getMargin(top: 11),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: true),
                          Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtForgotpassword();
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 15),
                                      child: Text("msg_forgot_password".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtGeneralSansMedium14DeeppurpleA200)))),
                          CustomButton(
                              height: getVerticalSize(55),
                              text: "lbl_sign_in".tr,
                              margin: getMargin(top: 23),
                              onTap: () {
                                onTapSignin();
                              }),
                          Padding(
                              padding: getPadding(left: 5, top: 35),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 8, bottom: 9),
                                        child: SizedBox(
                                            width: getHorizontalSize(95),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.gray300))),
                                    Text("msg_or_sign_in_using".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtGeneralSansRegular14),
                                    Padding(
                                        padding: getPadding(top: 8, bottom: 9),
                                        child: SizedBox(
                                            width: getHorizontalSize(95),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.gray300)))
                                  ])),
                          Container(
                              margin: getMargin(top: 23),
                              padding: getPadding(
                                  left: 67, top: 13, right: 67, bottom: 13),
                              decoration: AppDecoration.outlineGray300.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder3),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgFire,
                                        height: getVerticalSize(20),
                                        width: getHorizontalSize(17),
                                        margin: getMargin(left: 12, bottom: 2)),
                                    Padding(
                                        padding: getPadding(top: 2),
                                        child: Text(
                                            "msg_continue_with_apple".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtGeneralSansMedium14Gray90001))
                                  ])),
                          CustomButton(
                              height: getVerticalSize(50),
                              text: "msg_log_in_with_google".tr,
                              margin: getMargin(top: 15),
                              variant: ButtonVariant.OutlineGray300,
                              padding: ButtonPadding.PaddingT15,
                              fontStyle:
                                  ButtonFontStyle.GeneralSansMedium14Gray90001,
                              prefixWidget: Container(
                                  margin: getMargin(right: 19),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgGoogle)),
                              onTap: () {
                                onTapLoginwith();
                              }),
                          Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtDonthaveanaccount();
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 39, bottom: 6),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                    "msg_don_t_have_an_account2"
                                                        .tr,
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.gray500,
                                                    fontSize: getFontSize(14),
                                                    fontFamily: 'General Sans',
                                                    fontWeight:
                                                        FontWeight.w400)),
                                            TextSpan(
                                                text: "lbl_sign_up".tr,
                                                style: TextStyle(
                                                    color: ColorConstant
                                                        .deepPurpleA200,
                                                    fontSize: getFontSize(14),
                                                    fontFamily: 'General Sans',
                                                    fontWeight:
                                                        FontWeight.w500))
                                          ]),
                                          textAlign: TextAlign.left))))
                        ])))));
  }

  onTapTxtForgotpassword() {
    Get.toNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }

  onTapSignin() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }

  onTapLoginwith() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapTxtDonthaveanaccount() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }
}
