import 'controller/home_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application188/core/app_export.dart';
import 'package:mitul_s_application188/presentation/chat_details1_page/chat_details1_page.dart';
import 'package:mitul_s_application188/presentation/chats_page/chats_page.dart';
import 'package:mitul_s_application188/presentation/home_page/home_page.dart';
import 'package:mitul_s_application188/presentation/likes_page/likes_page.dart';
import 'package:mitul_s_application188/presentation/search_page/search_page.dart';
import 'package:mitul_s_application188/widgets/custom_bottom_bar.dart';

class HomeContainerScreen extends GetWidget<HomeContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Eye:
        return AppRoutes.homePage;
      case BottomBarEnum.Favoritegray300:
        return AppRoutes.likesPage;
      case BottomBarEnum.Search:
        return AppRoutes.searchPage;
      case BottomBarEnum.Videocamera:
        return AppRoutes.chatsPage;
      case BottomBarEnum.Settings:
        return AppRoutes.chatDetails1Page;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.likesPage:
        return LikesPage();
      case AppRoutes.searchPage:
        return SearchPage();
      case AppRoutes.chatsPage:
        return ChatsPage();
      case AppRoutes.chatDetails1Page:
        return ChatDetails1Page();
      default:
        return DefaultWidget();
    }
  }
}
