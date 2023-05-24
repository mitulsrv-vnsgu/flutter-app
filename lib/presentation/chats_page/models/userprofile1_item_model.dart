import 'package:get/get.dart';

/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {
  Rx<String> usernameTxt = Rx("Kristin Watson");

  Rx<String> greetingTxt = Rx("Hello, how are you?");

  Rx<String> messagecountTxt = Rx("2");

  Rx<String>? id = Rx("");
}
