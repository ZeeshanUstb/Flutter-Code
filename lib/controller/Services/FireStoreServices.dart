import 'package:salary_management/view/Screens/linker.dart';

class FireStoreServices {
  FirebaseAuth auth = FirebaseAuth.instance;
  final fireStoreCol = FirebaseFirestore.instance.collection('Registration');
  store(String email, String password, String name, var context) {
    String id = auth.currentUser!.uid;

    fireStoreCol.doc(id).set({
      'id': id.toString(),
      'Name': name.toString(),
      'Email': email.toString(),
      'Password': password.toString(),
    }).then((value) {
      Get.to(LogIn());
    }).onError((error, stackTrace) {
      customSnackbar(context, error.toString());
    });
  }
}
