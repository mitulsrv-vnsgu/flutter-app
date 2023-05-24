import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application188/core/app_export.dart';
import 'package:mitul_s_application188/core/utils/validation_functions.dart';
import 'package:mitul_s_application188/widgets/custom_button.dart';
import 'package:mitul_s_application188/widgets/custom_icon_button.dart';
import 'package:mitul_s_application188/widgets/custom_radio_button.dart';
import 'package:mitul_s_application188/widgets/custom_text_form_field.dart';
import 'package:mitul_s_application188/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
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
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: SingleChildScrollView(
                                  padding: getPadding(top: 8),
                                  child: Padding(
                                      padding: getPadding(
                                          left: 24, right: 30, bottom: 63),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomIconButton(
                                                height: 40,
                                                width: 40,
                                                shape: IconButtonShape
                                                    .RoundedBorder8,
                                                onTap: () {
                                                  onTapBtnArrowleftone();
                                                },
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowleft)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 6, top: 22),
                                                child: Text("lbl_sign_up".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGeneralSansBold26)),
                                            Container(
                                                width: getHorizontalSize(244),
                                                margin: getMargin(
                                                    left: 6, top: 8, right: 71),
                                                child: Text(
                                                    "msg_please_enter_your2".tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGeneralSansRegular16)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 6, top: 29),
                                                child: Text("lbl_username".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGeneralSansMedium14)),
                                            CustomTextFormField(
                                                focusNode: FocusNode(),
                                                autofocus: true,
                                                controller: controller
                                                    .usernameController,
                                                hintText:
                                                    "lbl_enter_username".tr,
                                                margin:
                                                    getMargin(left: 6, top: 11),
                                                validator: (value) {
                                                  if (!isText(value)) {
                                                    return "Please enter valid text";
                                                  }
                                                  return null;
                                                }),
                                            Padding(
                                                padding: getPadding(
                                                    left: 6, top: 17),
                                                child: Text(
                                                    "lbl_email_address".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGeneralSansMedium14)),
                                            CustomTextFormField(
                                                focusNode: FocusNode(),
                                                autofocus: true,
                                                controller:
                                                    controller.emailController,
                                                hintText:
                                                    "msg_enter_email_address"
                                                        .tr,
                                                margin:
                                                    getMargin(left: 6, top: 11),
                                                textInputType:
                                                    TextInputType.emailAddress,
                                                validator: (value) {
                                                  if (value == null ||
                                                      (!isValidEmail(value,
                                                          isRequired: true))) {
                                                    return "Please enter valid email";
                                                  }
                                                  return null;
                                                }),
                                            Padding(
                                                padding: getPadding(
                                                    left: 6, top: 17),
                                                child: Text("lbl_password".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGeneralSansMedium14)),
                                            CustomTextFormField(
                                                focusNode: FocusNode(),
                                                autofocus: true,
                                                controller: controller
                                                    .passwordController,
                                                hintText:
                                                    "msg_enter_your_password"
                                                        .tr,
                                                margin:
                                                    getMargin(left: 6, top: 11),
                                                textInputAction:
                                                    TextInputAction.done,
                                                textInputType: TextInputType
                                                    .visiblePassword,
                                                validator: (value) {
                                                  if (value == null ||
                                                      (!isValidPassword(value,
                                                          isRequired: true))) {
                                                    return "Please enter valid password";
                                                  }
                                                  return null;
                                                },
                                                isObscureText: true),
                                            Padding(
                                                padding: getPadding(
                                                    left: 6, top: 18),
                                                child: Text(
                                                    "lbl_looking_for".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGeneralSansMedium14)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 6, top: 10),
                                                child: Obx(() => Row(children: [
                                                      CustomRadioButton(
                                                          text: "lbl_male".tr,
                                                          iconSize:
                                                              getHorizontalSize(
                                                                  24),
                                                          value: controller
                                                              .signUpModelObj
                                                              .value
                                                              .radioList
                                                              .value[0],
                                                          groupValue: controller
                                                              .radioGroup.value,
                                                          fontStyle: RadioFontStyle
                                                              .GeneralSansMedium12,
                                                          onChange: (value) {
                                                            controller
                                                                .radioGroup
                                                                .value = value;
                                                          }),
                                                      CustomRadioButton(
                                                          text: "lbl_female".tr,
                                                          iconSize:
                                                              getHorizontalSize(
                                                                  24),
                                                          value: controller
                                                              .signUpModelObj
                                                              .value
                                                              .radioList
                                                              .value[1],
                                                          groupValue: controller
                                                              .radioGroup.value,
                                                          margin: getMargin(
                                                              left: 49),
                                                          fontStyle: RadioFontStyle
                                                              .GeneralSansMedium12,
                                                          onChange: (value) {
                                                            controller
                                                                .radioGroup
                                                                .value = value;
                                                          })
                                                    ]))),
                                            CustomButton(
                                                height: getVerticalSize(55),
                                                text: "lbl_sign_up".tr,
                                                margin:
                                                    getMargin(left: 6, top: 31),
                                                onTap: () {
                                                  onTapSignup();
                                                }),
                                            Padding(
                                                padding: getPadding(
                                                    left: 11, top: 35),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 8,
                                                              bottom: 9),
                                                          child: SizedBox(
                                                              width:
                                                                  getHorizontalSize(
                                                                      95),
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
                                                          padding: getPadding(
                                                              left: 3),
                                                          child: Text(
                                                              "msg_or_sign_up_using"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtGeneralSansRegular14)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 8,
                                                              bottom: 9),
                                                          child: SizedBox(
                                                              width:
                                                                  getHorizontalSize(
                                                                      102),
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
                                                                          7))))
                                                    ])),
                                            Container(
                                                margin:
                                                    getMargin(left: 6, top: 23),
                                                padding: getPadding(
                                                    left: 67,
                                                    top: 7,
                                                    right: 67,
                                                    bottom: 7),
                                                decoration: AppDecoration
                                                    .outlineGray300
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder3),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                          height: getSize(35),
                                                          width: getSize(35),
                                                          margin: getMargin(
                                                              left: 3),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgBg,
                                                                    height:
                                                                        getSize(
                                                                            35),
                                                                    width:
                                                                        getSize(
                                                                            35),
                                                                    alignment:
                                                                        Alignment
                                                                            .center),
                                                                CustomImageView(
                                                                    svgPath: ImageConstant
                                                                        .imgFire,
                                                                    height:
                                                                        getVerticalSize(
                                                                            20),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            17),
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter,
                                                                    margin:
                                                                        getMargin(
                                                                            top:
                                                                                6))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 9,
                                                              bottom: 6),
                                                          child: Text(
                                                              "msg_continue_with_apple"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtGeneralSansMedium14Gray90001))
                                                    ])),
                                            CustomButton(
                                                height: getVerticalSize(50),
                                                text:
                                                    "msg_log_in_with_google".tr,
                                                margin:
                                                    getMargin(left: 6, top: 15),
                                                variant: ButtonVariant
                                                    .OutlineGray300,
                                                padding:
                                                    ButtonPadding.PaddingT15,
                                                fontStyle: ButtonFontStyle
                                                    .GeneralSansMedium14Gray90001,
                                                prefixWidget: Container(
                                                    margin:
                                                        getMargin(right: 19),
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgGoogle)),
                                                onTap: () {
                                                  onTapLoginwith();
                                                }),
                                            Align(
                                                alignment: Alignment.center,
                                                child: GestureDetector(
                                                    onTap: () {
                                                      onTapTxtAlreadyhavean();
                                                    },
                                                    child: Padding(
                                                        padding:
                                                            getPadding(top: 21),
                                                        child: RichText(
                                                            text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                      text: "msg_already_have_an2"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .gray500,
                                                                          fontSize: getFontSize(
                                                                              14),
                                                                          fontFamily:
                                                                              'General Sans',
                                                                          fontWeight:
                                                                              FontWeight.w400)),
                                                                  TextSpan(
                                                                      text: "lbl_sign_in"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .deepPurpleA200,
                                                                          fontSize: getFontSize(
                                                                              14),
                                                                          fontFamily:
                                                                              'General Sans',
                                                                          fontWeight:
                                                                              FontWeight.w500))
                                                                ]),
                                                            textAlign: TextAlign
                                                                .left))))
                                          ]))))
                        ])))));
  }

  onTapBtnArrowleftone() {
    Get.back();
  }

  onTapSignup() {
    Get.toNamed(
      AppRoutes.signupQuestion1Screen,
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

  onTapTxtAlreadyhavean() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
