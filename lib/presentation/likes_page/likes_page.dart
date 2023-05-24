import '../likes_page/widgets/userprofile_item_widget.dart';
import 'controller/likes_controller.dart';
import 'models/likes_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application188/core/app_export.dart';
import 'package:mitul_s_application188/widgets/app_bar/appbar_image.dart';
import 'package:mitul_s_application188/widgets/app_bar/appbar_title.dart';
import 'package:mitul_s_application188/widgets/app_bar/custom_app_bar.dart';
import 'package:mitul_s_application188/presentation/success_popup_dialog/success_popup_dialog.dart';
import 'package:mitul_s_application188/presentation/success_popup_dialog/controller/success_popup_controller.dart';

// ignore_for_file: must_be_immutable
class LikesPage extends StatelessWidget {
  LikesController controller = Get.put(LikesController(LikesModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(67),
                title: AppbarTitle(
                    text: "lbl_likes".tr, margin: getMargin(left: 30)),
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
                height: getVerticalSize(741),
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: getPadding(
                              left: 30, top: 13, right: 30, bottom: 47),
                          child: Obx(() => GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: getVerticalSize(218),
                                      crossAxisCount: 2,
                                      mainAxisSpacing: getHorizontalSize(15),
                                      crossAxisSpacing: getHorizontalSize(15)),
                              physics: BouncingScrollPhysics(),
                              itemCount: controller.likesModelObj.value
                                  .userprofileItemList.value.length,
                              itemBuilder: (context, index) {
                                UserprofileItemModel model = controller
                                    .likesModelObj
                                    .value
                                    .userprofileItemList
                                    .value[index];
                                return UserprofileItemWidget(model,
                                    onTapBtnUserfavorite: () {
                                  onTapBtnUserfavorite();
                                });
                              })))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          height: getVerticalSize(192),
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment(0.5, 0),
                                  end: Alignment(0.5, 1),
                                  colors: [
                                ColorConstant.whiteA70000,
                                ColorConstant.whiteA700
                              ]))))
                ]))));
  }

  onTapBtnUserfavorite() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.only(left: 0),
      content: SuccessPopupDialog(
        Get.put(
          SuccessPopupController(),
        ),
      ),
    ));
  }
}
