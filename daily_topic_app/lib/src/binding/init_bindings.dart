import 'package:daily_topic_app/src/controller/bottom_nav_controller.dart';
import 'package:get/get.dart';

class InitBinding extends Bindings {

  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(BottomNavController(),permanent: true);
  }
}
