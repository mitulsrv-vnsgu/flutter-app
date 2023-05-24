import '../controller/signup_question_3_controller.dart';
import 'package:get/get.dart';

class SignupQuestion3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupQuestion3Controller());
  }
}
