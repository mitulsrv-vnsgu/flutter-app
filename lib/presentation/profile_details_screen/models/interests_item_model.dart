import 'package:get/get.dart';

/// This class is used in the [interests_item_widget] screen.
class InterestsItemModel {
  Rx<String> runningTxt = Rx("Running");

  Rx<bool> isSelected = Rx(false);
}
