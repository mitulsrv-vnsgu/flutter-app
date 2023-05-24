import '../controller/signup_question_2_controller.dart';
import 'package:get/get.dart';

class SignupQuestion2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupQuestion2Controller());
  }
}
