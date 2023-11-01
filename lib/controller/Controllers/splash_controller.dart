import 'dart:async';

import 'package:salary_management/view/Screens/linker.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Timer(Duration(seconds: 5), () {
      Athentication().isLogin();
    });
    super.onInit();
  }
}

 
    //   Timer(Duration(seconds: 5) ,() {
    //    Navigator.push(
    //           context,
    //           MaterialPageRoute(builder: (context) => LogIn()),
    //         );
    // }
      // );

