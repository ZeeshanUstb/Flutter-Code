// import 'package:salary_management/controller/Services/firebaseAuthentication.dart';
import 'package:salary_management/view/Screens/linker.dart';

// ___________________________________Text Fields_________________________________________
CreatTextField(String hints, bool val, TextEditingController control) {
  return TextFormField(
      controller: control,
      obscureText: val,
      decoration: InputDecoration(
        label: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(hints),
        ),
        contentPadding: EdgeInsets.all(10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter student $value';
        } else {
          return null;
        }
      });
}

// _________________________________________creat circle_____________________________________
CreatCircle() {
  return const InkWell(
    child: CircleAvatar(
      radius: 40,
      backgroundImage: AssetImage('images/login-button.png'),
    ),
  );
}
