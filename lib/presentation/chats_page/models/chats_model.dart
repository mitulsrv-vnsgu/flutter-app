import 'package:get/get.dart';
import 'userprofile1_item_model.dart';

/// This class defines the variables used in the [chats_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ChatsModel {
  Rx<List<Userprofile1ItemModel>> userprofile1ItemList =
      Rx(List.generate(6, (index) => Userprofile1ItemModel()));
}
