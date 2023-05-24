import '../controller/signup_question_1_controller.dart';
import 'package:get/get.dart';

class SignupQuestion1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupQuestion1Controller());
  }
}
