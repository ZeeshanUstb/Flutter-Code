import 'package:salary_management/view/Screens/linker.dart';

class Athentication {
  FirebaseAuth auth = FirebaseAuth.instance;

  // ____________________________________login______________________
  logIn(email, password, var context) {
    return auth
        .signInWithEmailAndPassword(
      email: email.toString(),
      password: password.toString(),
    )
        .then((value) {
      customSnackbar(context, "Welcom");
    }).then((value) {
      Get.to(home());
    }).onError((error, stackTrace) {
      customSnackbar(context, error.toString());
      //ScaffoldMessenger.of(context).showSnackBar(sk);
    });
  }

// _________________________________Sign Up________________________
  signUp(
    String email,
    String password,
    String name,
    var context,
  ) {
    return auth
        .createUserWithEmailAndPassword(
      email: email.toString(),
      password: password.toString(),
      // name:name.toString(),
    )
        .then((value) {
      //  customSnackbar(context, "Registerd");
      FireStoreServices().store(
          email.toString(), password.toString(), name.toString(), context);
    }).onError((error, stackTrace) {
      customSnackbar(context, error.toString());
      //ScaffoldMessenger.of(context).showSnackBar(sk);
    });
  }

// ________________________________Logout_______________________________________________
  logOut(var context) {
    auth.signOut().then((value) {
      Get.back();
    }).then((value) {
      customSnackbar(context, "Logout");
    }).onError((error, stackTrace) {
      customSnackbar(context, error.toString());
    });
  }

  isLogin() {
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;
    if (user != null) {
      Timer(Duration(seconds: 2), () {
        Get.to(home());
      });
    } else {
      Get.to(SignUp());
    }
  }
}
