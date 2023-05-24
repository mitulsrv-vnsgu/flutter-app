import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application188/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.deepPurpleA200,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 139,
            top: 38,
            right: 139,
            bottom: 38,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgUser,
                height: getVerticalSize(
                  88,
                ),
                width: getHorizontalSize(
                  96,
                ),
                margin: getMargin(
                  top: 284,
                ),
              ),
              Spacer(),
              Padding(
                padding: getPadding(
                  left: 22,
                ),
                child: Text(
                  "lbl_xost".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGeneralSansSemibold20.copyWith(
                    letterSpacing: getHorizontalSize(
                      1.0,
                    ),
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
