import 'controller/signup_question_3_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application188/core/app_export.dart';
import 'package:mitul_s_application188/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mitul_s_application188/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:mitul_s_application188/widgets/app_bar/custom_app_bar.dart';
import 'package:mitul_s_application188/widgets/custom_button.dart';

class SignupQuestion3Screen extends GetWidget<SignupQuestion3Controller> {
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
                      onTapArrowleftone2();
                    }),
                centerTitle: true,
                title: AppbarSubtitle1(text: "msg_let_s_get_started".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 30, bottom: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(5),
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                    width: double.maxFinite,
                                    child: Divider(
                                        height: getVerticalSize(5),
                                        thickness: getVerticalSize(5),
                                        color: ColorConstant.blueGray50))),
                            Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                    width: double.maxFinite,
                                    child: Divider(
                                        height: getVerticalSize(5),
                                        thickness: getVerticalSize(5),
                                        color: ColorConstant.deepPurpleA200)))
                          ])),
                      Padding(
                          padding: getPadding(left: 30, top: 33),
                          child: Text("lbl_my_age".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGeneralSansBold26)),
                      Container(
                          width: getHorizontalSize(299),
                          margin: getMargin(left: 30, top: 7, right: 46),
                          child: Text("msg_please_set_your".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGeneralSansRegular16)),
                      Padding(
                          padding: getPadding(left: 30, top: 23, right: 30),
                          child: SliderTheme(
                              data: SliderThemeData(
                                  trackShape: RoundedRectSliderTrackShape(),
                                  activeTrackColor:
                                      ColorConstant.deepPurpleA200,
                                  inactiveTrackColor:
                                      ColorConstant.blueGray90019,
                                  thumbColor: ColorConstant.deepPurpleA200,
                                  thumbShape: RoundSliderThumbShape()),
                              child: Slider(
                                  value: 25.0,
                                  min: 0.0,
                                  max: 100.0,
                                  onChanged: (value) {}))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding:
                                  getPadding(top: 22, right: 31, bottom: 5),
                              child: Text("lbl_25_years".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGeneralSansSemibold18)))
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
                      text: "lbl_done".tr,
                      margin: getMargin(left: 15),
                      onTap: () {
                        onTapDone();
                      })
                ]))));
  }

  onTapPrevious() {
    Get.toNamed(
      AppRoutes.signupQuestion2Screen,
    );
  }

  onTapDone() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }

  onTapArrowleftone2() {
    Get.back();
  }
}
