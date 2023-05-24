import 'package:get/get.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [likes_page],
/// and is typically used to hold data that is passed between different parts of the application.
class LikesModel {
  Rx<List<UserprofileItemModel>> userprofileItemList =
      Rx(List.generate(6, (index) => UserprofileItemModel()));
}
