import '../chats_page/widgets/userprofile1_item_widget.dart';
import 'controller/chats_controller.dart';
import 'models/chats_model.dart';
import 'models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application188/core/app_export.dart';
import 'package:mitul_s_application188/widgets/app_bar/appbar_image.dart';
import 'package:mitul_s_application188/widgets/app_bar/appbar_title.dart';
import 'package:mitul_s_application188/widgets/app_bar/custom_app_bar.dart';

class ChatsPage extends StatelessWidget {
  ChatsController controller = Get.put(ChatsController(ChatsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            68,
          ),
          title: AppbarTitle(
            text: "lbl_chats".tr,
            margin: getMargin(
              left: 30,
            ),
          ),
          actions: [
            Container(
              height: getSize(
                40,
              ),
              width: getSize(
                40,
              ),
              margin: getMargin(
                left: 30,
                top: 8,
                right: 30,
                bottom: 8,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  AppbarImage(
                    height: getSize(
                      40,
                    ),
                    width: getSize(
                      40,
                    ),
                    imagePath: ImageConstant.imgRectangle239,
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgSearchGray40001,
                    height: getSize(
                      24,
                    ),
                    width: getSize(
                      24,
                    ),
                    alignment: Alignment.center,
                    margin: getMargin(
                      all: 8,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 12,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 30,
                    right: 30,
                  ),
                  child: Obx(
                    () => ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (
                        context,
                        index,
                      ) {
                        return Padding(
                          padding: getPadding(
                            top: 15.0,
                            bottom: 15.0,
                          ),
                          child: SizedBox(
                            width: getHorizontalSize(
                              315,
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
                        );
                      },
                      itemCount: controller.chatsModelObj.value
                          .userprofile1ItemList.value.length,
                      itemBuilder: (context, index) {
                        Userprofile1ItemModel model = controller.chatsModelObj
                            .value.userprofile1ItemList.value[index];
                        return Userprofile1ItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    197,
                  ),
                  width: double.maxFinite,
                  margin: getMargin(
                    top: 14,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.all(0),
                              color: ColorConstant.gray50,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusStyle.roundedBorder34,
                              ),
                              child: Container(
                                height: getSize(
                                  65,
                                ),
                                width: getSize(
                                  65,
                                ),
                                padding: getPadding(
                                  all: 2,
                                ),
                                decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder34,
                                ),
                                child: Stack(
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEllipse566,
                                      height: getSize(
                                        60,
                                      ),
                                      width: getSize(
                                        60,
                                      ),
                                      radius: BorderRadius.circular(
                                        getHorizontalSize(
                                          30,
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
                                left: 12,
                                top: 8,
                                bottom: 7,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "lbl_charlotte".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGeneralSansSemibold18Gray900,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 128,
                                          top: 5,
                                          bottom: 2,
                                        ),
                                        child: Text(
                                          "lbl_today".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtGeneralSansRegular12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 2,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            top: 2,
                                          ),
                                          child: Text(
                                            "msg_hello_how_are_you".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtGeneralSansMedium14,
                                          ),
                                        ),
                                        Container(
                                          width: getSize(
                                            22,
                                          ),
                                          margin: getMargin(
                                            left: 92,
                                          ),
                                          padding: getPadding(
                                            left: 8,
                                            top: 3,
                                            right: 8,
                                            bottom: 3,
                                          ),
                                          decoration: AppDecoration
                                              .txtFillDeeppurpleA200
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder11,
                                          ),
                                          child: Text(
                                            "lbl_2".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtGeneralSansMedium10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: getVerticalSize(
                            192,
                          ),
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(
                                0.5,
                                0,
                              ),
                              end: Alignment(
                                0.5,
                                1,
                              ),
                              colors: [
                                ColorConstant.whiteA70000,
                                ColorConstant.whiteA700,
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
