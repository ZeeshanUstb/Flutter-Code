import 'package:salary_management/view/Screens/linker.dart';

class AllBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
    Get.lazyPut(() => CheckBoxController());
  }
}
