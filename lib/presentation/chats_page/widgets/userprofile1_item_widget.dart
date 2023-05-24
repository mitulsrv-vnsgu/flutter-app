import '../controller/chats_controller.dart';
import '../models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application188/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(this.userprofile1ItemModelObj);

  Userprofile1ItemModel userprofile1ItemModelObj;

  var controller = Get.find<ChatsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              borderRadius: BorderRadiusStyle.roundedBorder34,
            ),
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse5660x60,
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
            top: 7,
            bottom: 7,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(
                    () => Text(
                      userprofile1ItemModelObj.usernameTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGeneralSansSemibold18Gray900,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 82,
                      top: 5,
                      bottom: 2,
                    ),
                    child: Text(
                      "lbl_today".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGeneralSansRegular12,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: getPadding(
                  top: 3,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 2,
                      ),
                      child: Obx(
                        () => Text(
                          userprofile1ItemModelObj.greetingTxt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtGeneralSansMedium14,
                        ),
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
                      decoration: AppDecoration.txtFillDeeppurpleA200.copyWith(
                        borderRadius: BorderRadiusStyle.txtCircleBorder11,
                      ),
                      child: Obx(
                        () => Text(
                          userprofile1ItemModelObj.messagecountTxt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtGeneralSansMedium10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
